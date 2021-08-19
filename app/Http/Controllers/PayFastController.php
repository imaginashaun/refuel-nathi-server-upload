<?php

namespace App\Http\Controllers;

use App\Models\DeliveryAddress;
use App\Models\Payment;
use App\Models\User;
use App\Repositories\DeliveryAddressRepository;
use Illuminate\Http\Request;
use Laracasts\Flash\Flash;
use PayFast\PayFastPayment;

class PayFastController extends ParentOrderController
{
    //
    public function __init()
    {

    }

    public function privacypolicy(){

        return view('privacypolicy');

    }


    public function generateSignature($data, $passPhrase = null) {
        // Create parameter string
        $pfOutput = '';
        foreach( $data as $key => $val ) {
            if($val !== '') {
                $pfOutput .= $key .'='. urlencode( trim( $val ) ) .'&';
            }
        }
        // Remove last ampersand
        $getString = substr( $pfOutput, 0, -1 );
        if( $passPhrase !== null ) {
            $getString .= '&passphrase='. urlencode( trim( $passPhrase ) );
        }
        return md5( $getString );
    }


    public function paymentcancelled(Request $request){

        echo "CANCELLED";
    }
    public function paymentreturn(Request $request){


        $this->order->user_id = $request->get('user_id', 0);
        $this->order->user = $this->userRepository->findWithoutFail($this->order->user_id);
        $this->coupon = $this->couponRepository->findByField('code', $request->get('coupon_code'))->first();
        $this->order->delivery_address_id = $request->get('delivery_address_id', 0);

        $payPalCart = $this->getCheckoutData();

        // Perform transaction on PayPal
        $this->order->payment = new Payment();
        $this->order->payment->status = "Paid";
        $this->order->payment->method = 'PayFast';

        $this->createOrder();



        echo "PAID";
    }

    public function paymentnotify(Request $request){



    }


    public function checkout(Request $request){


        $user = $this->userRepository->findByField('api_token', $request->get('api_token'))->first();
        $coupon = $this->couponRepository->findByField('code', $request->get('coupon_code'))->first();
        $deliveryId = $request->get('delivery_address_id');
        if (!empty($user)) {
            $this->order->user = $user;
            $this->order->user_id = $user->id;
            $this->order->delivery_address_id = $deliveryId;
            $this->coupon = $coupon;
        }


        try {
            $payfast = new PayFastPayment(
                [
                    'merchantId' => '17865592',
                    'merchantKey' => '6s8acqtzs197z',
                    'passPhrase' => 'MphatengPooe01',
                    'testMode' => false//
                ]
            );

            /*  $data = [
                  'amount' => '100.00',
                  'item_name' => 'Order#123',
                  'm_payment_id' => '2',
                  'return_url' => env('RETURN_URL'),
                  'cancel_url' => env('CANCEL_URL'),
                  'notify_url' => env('NOTIFY_URL'),
              ];
  */
            $data = $this->getCheckoutData();

            echo "<html><body><script type='text/javascript'>window.onload = function() {document.querySelector('form').submit();}</script>";

            echo $payfast->custom->createFormFields($data, ['value' => 'PAY NOW', 'class' => 'btn']);
            echo "</body></html>";
        } catch(Exception $e) {
            echo 'There was an exception: '.$e->getMessage();
        }



        /*
                try {
                    $payfast = new PayFastPayment(
                        [
                            'merchantId' => '10022866',
                            'merchantKey' => 'j5jlaeuaauxi3',
                            'passPhrase' => '',
                            'testMode' => true
                        ]
                    );

                    $data = [
                        'amount' => '100.00',
                        'item_name' => 'Order#123'
                    ];

                    // Generate payment identifier
                    $identifier = $payfast->onsite->generatePaymentIdentifier($data);



                    return view('payfast', ['identifier' => $identifier]);

                } catch(Exception $e) {
                    //return view('greeting', ['name' => 'Finn']);

                    echo 'There was an exception: '.$e->getMessage();

                    die();
                }

        */
    }


    private function getCheckoutData()
    {
        $data = [];
        $this->calculateTotal();
        $order_id = $this->paymentRepository->all()->count() + 1;

        $data = [
            'amount' => $this->total,
            'item_name' => $this->order->user->cart[0]->product->market->name,
            'm_payment_id' => $this->order->user_id,
            'return_url' =>  url("api/paymentreturn?user_id=" . $this->order->user_id . "&delivery_address_id=" . $this->order->delivery_address_id),
            'cancel_url' => env('CANCEL_URL'),
            'notify_url' => env('NOTIFY_URL'),
        ];

        //$data['total'] = $this->total;
        //   $data['return_url'] = url("api/paymentreturn?user_id=" . $this->order->user_id . "&delivery_address_id=" . $this->order->delivery_address_id);

        if (isset($this->coupon)) {
            $data['return_url'] .= "&coupon_code=" . $this->coupon->code;
        }
        //  $data['cancel_url'] = url('payments/paypal');
        //  $data['invoice_id'] = $order_id . '_' . date("Y_m_d_h_i_sa");
        //  $data['invoice_description'] = $this->order->user->cart[0]->product->market->name;

        //dd($data);
        return $data;
    }


}

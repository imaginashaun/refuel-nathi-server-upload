<?php
/**
 * File name: UserAPIController.php
 * Last modified: 2020.10.29 at 17:03:54
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\CustomFieldValue;
use App\Models\User;
use App\Repositories\CustomFieldRepository;
use App\Repositories\RoleRepository;
use App\Repositories\UploadRepository;
use App\Repositories\UserRepository;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Password;
use Prettus\Validator\Exceptions\ValidatorException;
use Twilio\Rest\Client;

class UserAPIController extends Controller
{
    private $userRepository;
    private $uploadRepository;
    private $roleRepository;
    private $customFieldRepository;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(UserRepository $userRepository, UploadRepository $uploadRepository, RoleRepository $roleRepository, CustomFieldRepository $customFieldRepo)
    {
        $this->userRepository = $userRepository;
        $this->uploadRepository = $uploadRepository;
        $this->roleRepository = $roleRepository;
        $this->customFieldRepository = $customFieldRepo;
    }



    function sendSMS($phone,$message){


        $account_sid = getenv("TWILIO_ACCOUNT_SID");
        $auth_token = getenv("TWILIO_AUTH_TOKEN");
        $twilio_number = getenv("TWILIO_PHONE");



        //echo "TN: ".$twilio_number;
        //echo "AT: ".$auth_token;
        //echo "ASID: ".$account_sid;

        // die();
        $client = new Client($account_sid, $auth_token);
        $client->messages->create($phone,
            ['from' => $twilio_number, 'body' => $message] );

    }


    public function getotp(Request $request){

        $chars = "0123456789";
        $otpval = "";
        for ($i = 0; $i < 4; $i++){
            $otpval .= $chars[mt_rand(0, strlen($chars)-1)];
        }


        $otpmessage = "Your verification code is: ".$otpval.".\nNote: Please DO NOT SHARE this code with anyone.";



        $phone = $request->phone;

        if(!str_contains('+', $request->phone)){
            $phone = '+'.$request->phone;
        }

        $this->sendSMS($phone,$otpmessage);

        return $this->sendResponse(1, $otpval);
    }

    function verifyphone(Request $request){



        $chars = "0123456789";
        //
        $otpval = "";
        for ($i = 0; $i < 4; $i++){
            $otpval .= $chars[mt_rand(0, strlen($chars)-1)];
        }


        $otpmessage = "Your verification code is: ".$otpval.".\nNote: Please DO NOT SHARE this code with anyone.";





        $phone = $request->phone;

        if(!str_contains('+', $request->phone)){
            $phone = '+'.$request->phone;
        }

        $user_field = CustomFieldValue::where('value', $phone)->first();

        if($user_field){

            $user = User::find($user_field->customizable_id);

            $user->otp = $otpval;
            $user->save();


            $this->sendSMS($phone,$otpmessage);

            return $this->sendResponse(1, 'Verify Phone Number');

        }
        return $this->sendResponse(0, 'Failed Phone Number');
    }
    function verifydriverphone(Request $request){



        $chars = "0123456789";
        $otpval = "";
        for ($i = 0; $i < 4; $i++){
            $otpval .= $chars[mt_rand(0, strlen($chars)-1)];
        }


        $otpmessage = "Your verification code is: ".$otpval.".\nNote: Please DO NOT SHARE this code with anyone.";





        $phone = $request->phone;

        if(!str_contains('+', $request->phone)){
            $phone = '+'.$request->phone;
        }

        $user_field = CustomFieldValue::where('value', $phone)->first();

        if($user_field){

            $user = User::find($user_field->customizable_id);

            $user->otp = $otpval;
            $user->save();

            $this->sendSMS($phone,$otpmessage);

            return $this->sendResponse(1, 'Verify Phone Number');

        }

        return $this->sendResponse(0, 'No such user is registered as a driver.');
    }

    function loginphone(Request $request)
    {
        try {
            $phone = $request->input('phone', '');

            if(!str_contains('+', $request->input('phone', ''))){
                $phone = '+'.$request->input('phone', '');
            }

            $user_field = CustomFieldValue::where('value', $phone)->first();
            if($user_field) {

                $user = User::where('id',$user_field->customizable_id)->first();
//edit here
                //     $user->device_token = $request->input('device_token', '');
                //     $user->save();
                // Authentication passed...
                //    $user = auth()->user();
                $user->device_token = $request->input('device_token', '');
                $user->save();
                return $this->sendResponse($user, 'User retrieved successfully');
            }
            return $this->sendResponse(0, 'FAILED');

        } catch (\Exception $e) {
            return $this->sendError($e->getMessage(), 401);
        }

    }

    function login(Request $request)
    {
        try {
            $this->validate($request, [
                'email' => 'required|email',
                'password' => 'required',
            ]);
            if (auth()->attempt(['email' => $request->input('email'), 'password' => $request->input('password')])) {
                // Authentication passed...
                $user = auth()->user();
                $user->device_token = $request->input('device_token', '');
                $user->save();
                return $this->sendResponse($user, 'User retrieved successfully');
            }
        } catch (\Exception $e) {
            return $this->sendError($e->getMessage(), 401);
        }

    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param array $data
     * @return
     */
    function register(Request $request)
    {
        try {
            $this->validate($request, [
                'name' => 'required',
                'email' => 'required|unique:users|email',
                'password' => 'required',
                'phone' => 'required',
            ]);
            $user = new User;
            $user->name = $request->input('name');
            $user->email = $request->input('email');
            $user->device_token = $request->input('device_token', '');
            $user->password = Hash::make($request->input('password'));
            $user->api_token = str_random(60);
            $user->save();

            $customValues = [
                'customizable_type'=>'App\Models\User',
                'custom_field_id'=>4,
                'value'=>"+".$request->input('phone'),
                'view'=>"+".$request->input('phone'),
                'customizable_id'=>$user->id,
            ];


            $user->customFieldsValues()
                ->updateOrCreate(['custom_field_id' => $customValues['custom_field_id']], $customValues);

            $defaultRoles = $this->roleRepository->findByField('default', '1');
            $defaultRoles = $defaultRoles->pluck('name')->toArray();
            $user->assignRole($defaultRoles);

            if (copy(public_path('images/avatar_default.png'), public_path('images/avatar_default_temp.png'))) {
                $user->addMedia(public_path('images/avatar_default_temp.png'))
                    ->withCustomProperties(['uuid' => bcrypt(str_random())])
                    ->toMediaCollection('avatar');
            }
        } catch (\Exception $e) {
            return $this->sendError($e->getMessage(), 401);
        }


        return $this->sendResponse($user, 'User retrieved successfully');
    }

    function logout(Request $request)
    {
        $user = $this->userRepository->findByField('api_token', $request->input('api_token'))->first();
        if (!$user) {
            return $this->sendError('User not found', 401);
        }
        try {
            auth()->logout();
        } catch (\Exception $e) {
            $this->sendError($e->getMessage(), 401);
        }
        return $this->sendResponse($user['name'], 'User logout successfully');

    }

    function user(Request $request)
    {
        $user = $this->userRepository->findByField('api_token', $request->input('api_token'))->first();

        if (!$user) {
            return $this->sendError('User not found', 401);
        }

        return $this->sendResponse($user, 'User retrieved successfully');
    }

    function settings(Request $request)
    {
        $settings = setting()->all();
        $settings = array_intersect_key($settings,
            [
                'default_tax' => '',
                'default_currency' => '',
                'default_currency_decimal_digits' => '',
                'app_name' => '',
                'currency_right' => '',
                'enable_paypal' => '',
                'enable_stripe' => '',
                'enable_razorpay' => '',
                'main_color' => '',
                'main_dark_color' => '',
                'second_color' => '',
                'second_dark_color' => '',
                'accent_color' => '',
                'accent_dark_color' => '',
                'scaffold_dark_color' => '',
                'scaffold_color' => '',
                'google_maps_key' => '',
                'fcm_key' => '',
                'mobile_language' => '',
                'app_version' => '',
                'enable_version' => '',
                'distance_unit' => '',
                'home_section_1'=> '',
                'home_section_2'=> '',
                'home_section_3'=> '',
                'home_section_4'=> '',
                'home_section_5'=> '',
                'home_section_6'=> '',
                'home_section_7'=> '',
                'home_section_8'=> '',
                'home_section_9'=> '',
                'home_section_10'=> '',
                'home_section_11'=> '',
                'home_section_12'=> '',
            ]
        );

        if (!$settings) {
            return $this->sendError('Settings not found', 401);
        }

        return $this->sendResponse($settings, 'Settings retrieved successfully');
    }

    /**
     * Update the specified User in storage.
     *
     * @param int $id
     * @param Request $request
     *
     */
    public function update($id, Request $request)
    {
        $user = $this->userRepository->findWithoutFail($id);

        if (empty($user)) {
            return $this->sendResponse([
                'error' => true,
                'code' => 404,
            ], 'User not found');
        }
        $input = $request->except(['password', 'api_token']);
        try {
            if ($request->has('device_token')) {
                $user = $this->userRepository->update($request->only('device_token'), $id);
            } else {
                $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->userRepository->model());
                $user = $this->userRepository->update($input, $id);

                foreach (getCustomFieldsValues($customFields, $request) as $value) {
                    $user->customFieldsValues()
                        ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
                }
            }
        } catch (ValidatorException $e) {
            return $this->sendError($e->getMessage(), 401);
        }

        return $this->sendResponse($user, __('lang.updated_successfully', ['operator' => __('lang.user')]));
    }

    function sendResetLinkEmail(Request $request)
    {
        $this->validate($request, ['email' => 'required|email']);

        $response = Password::broker()->sendResetLink(
            $request->only('email')
        );

        if ($response == Password::RESET_LINK_SENT) {
            return $this->sendResponse(true, 'Reset link was sent successfully');
        } else {
            return $this->sendError('Reset link not sent', 401);
        }

    }
}

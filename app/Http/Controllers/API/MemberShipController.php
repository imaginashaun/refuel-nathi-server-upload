<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class MemberShipController extends Controller
{
    public function CheckMembership($id){
        $details=  DB::select("SELECT D.discount,P.price,P.status as payment_status,P.method,P.description, PO.product_id,O.user_id,O.created_at,DATE_ADD(O.created_at, INTERVAL 365 DAY) as expiry_date FROM `product_orders` PO INNER JOIN products PR ON  PR.id=PO.product_id INNER JOIN  Orders O On O.id=PO.order_id INNER JOIN payments P ON P.id=O.payment_id  CROSS JOIN discounts D  where O.user_id=? and PR.name='annual_subscription' and DATE_ADD(O.created_at, INTERVAL 365 DAY) > CURDATE() AND P.status='succeeded'
",[$id]);
        if (count($details)) {
            return response()->json([
                "success"=>true,
                "data"=>$details[0],
                "message"=>"Driver Found!"
            ]);
        }
        else{
            return response()->json([
                "success"=>false,
                "data"=>null,
                "message"=>"Not a member"
            ]);
        }
    }
}

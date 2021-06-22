<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class TruckController extends Controller
{


    /*
     * public function getTrucks($id){
        $details=  DB::select("SELECT TL.id,name,latitude,longitude,T.driver_id,truck_id FROM `trucklocations` TL INNER JOIN trucks T ON T.id=TL.truck_id where T.market_id=?",[$id]);
        if (count($details)) {
            return response()->json([
                "success"=>true,
                "data"=>$details,
                "message"=>"Truck Found!"
            ]);
        }
        else{
            return response()->json([
                "success"=>false,
                "data"=>null,
                "message"=>"No active trucks found"
            ]);
        }
    }
    */
    public function getTrucks($id){
        $details=  DB::select("SELECT TL.id,name,latitude,longitude,T.driver_id,truck_id FROM `trucklocations` TL INNER JOIN trucks T ON T.id=TL.truck_id where T.market_id=?",[$id]);
        if (count($details)) {
            return response()->json([
                "success"=>true,
                "data"=>$details,
                "message"=>"Truck Found!"
            ]);
        } else{
            return response()->json([
                "success"=>false,
                "data"=>null,
                "message"=>"No active trucks found"
            ]);
        }
    }

    public function getTimes($id){

        $details=  array();
        $starttime = 'now';  // your start time
        $endtime = '18:00';  // End time
        $duration = '45';  // split by 30 mins
        $array_of_time = array ();
        $start_time    = strtotime ($starttime);
        //hack to force display
        $start_time=strtotime ('06:00');
        //end hack
        if($start_time<strtotime('06:00')){
            $start_time=strtotime ('06:00');
        }
        $start_time += 1800;
        $end_time= strtotime ($endtime); //change to strtotime
        $add_mins  = $duration * 60;
        while ($start_time+$add_mins <= $end_time) // loop between time
        {
            $array_of_time[] = date ("H:i", $start_time).'-'.date("H:i", $start_time + $add_mins);
            $start_time += ($add_mins+300);
            $ending=date ("H:i", $start_time);

//                echo $ending;// to check endtie=me
        }
        array_push($details,"30");
        return response()->json([
            "success"=>true,
            "data"=>$array_of_time,
            "driver"=>1,
            "message"=>"Time Found!"
        ]);


        $starting_time    = strtotime ('now');
        if($starting_time>(strtotime ('18:00')-45*60)){
            return response()->json([
                "success"=>false,
                "data"=>null,
                "message"=>"No Time Found!"
            ]);

        }
        else{
            $drivers=  DB::select("SELECT case WHEN O.number_of_orders IS NULL then 0 else O.number_of_orders end as orders,T.driver_id,T.id,market_id,reg_number FROM trucks T LEFT JOIN (select created_at,driver_id, count(id) as number_of_orders from orders where Date(created_at)=CURRENT_DATE group by driver_id ) O ON O.driver_id=T.driver_id where market_id=?",[$id]);

            if(count($drivers)){
//    $Object = array_reduce($drivers,function($A,$B){
//        return $A->orders <= $B->orders ? $A : $B;
//    });
                $min = $drivers[0];
                foreach($drivers as $key => $val){
                    if($min->orders > $val->orders){
                        $min = $val;
                    }
                }


                $times= DB::select("select allocated_time from orders where driver_id=? and Date(created_at)=CURRENT_DATE",[$min->driver_id]) ;
                if(count($times)){

                    $time=array();
                    foreach ($times as $value) {
                        array_push($time,$value->allocated_time);
                    }
                    $testObject = new TruckController();
                    $a= $testObject->getTime($time);

                    return response()->json([
                        "success"=>true,
                        "data"=>$a,
                        "driver"=>$min->driver_id,
                        "message"=>"Time Found!"
                    ]);

//            return response()->json([
//                "success"=>true,
//                "data"=>$time,
//                "message"=>"Time Found!"
//            ]);
                }
                else{
                    $details=  array();
                    $starttime = 'now';  // your start time
                    $endtime = '18:00';  // End time
                    $duration = '45';  // split by 30 mins
                    $array_of_time = array ();
                    $start_time    = strtotime ($starttime);
                    if($start_time<strtotime('06:00')){
                        $start_time=strtotime ('06:00');
                    }
                    $start_time += 1800;
                    $end_time= strtotime ($endtime); //change to strtotime
                    $add_mins  = $duration * 60;
                    while ($start_time+$add_mins <= $end_time) // loop between time
                    {
                        $array_of_time[] = date ("H:i", $start_time).'-'.date("H:i", $start_time + $add_mins);
                        $start_time += ($add_mins+300);
                        $ending=date ("H:i", $start_time);

//                echo $ending;// to check endtie=me
                    }
                    array_push($details,"30");
                    return response()->json([
                        "success"=>true,
                        "data"=>$array_of_time,
                        "driver"=>$min->driver_id,
                        "message"=>"Time Found!"
                    ]);
                }
            }
            else{
                return response()->json([
                    "success"=>true,
                    "data"=>null,
                    "message"=>"Time Found!"
                ]);}
        }




//        $trucks=  DB::select("SELECT T.id,market_id,reg_number,reg_number,latitude,longitude FROM trucks T INNER JOIN trucklocations TL ON T.id=TL.truck_id LEFT JOIN (select order_status_id,driver_id from orders OO inner join order_statuses OS ON OS.id=OO.order_status_id WHERE OS.status not in ('On the Way','Ready','Preparing') ) O ON O.driver_id=TL.driver_id where market_id=12 and order_status_id is null") ;
//        $details=  array();
//        if (count($trucks)) {
//
//            $starttime = 'now';  // your start time
//            $endtime = '18:00';  // End time
//            $duration = '45';  // split by 30 mins
//
//
//            $array_of_time = array ();
//            $start_time    = strtotime ($starttime);
//            $start_time += 300;
//            $end_time      = strtotime ($endtime); //change to strtotime
//
//            $add_mins  = $duration * 60;
//
//
//            while ($start_time+$add_mins <= $end_time) // loop between time
//            {
//                $array_of_time[] = date ("h:i", $start_time).'-'.date("h:i", $start_time + $add_mins);
//                $start_time += $add_mins;
//                $ending=date ("h:i", $start_time);
//
////                echo $ending;// to check endtie=me
//            }
//
//            array_push($details,"30");
//            return response()->json([
//                "success"=>true,
//                "data"=>$array_of_time,
//                "message"=>"Time Found!"
//            ]);
//        }
//        else{
//            array_push($details,"50");
//            $orders=  DB::select("SELECT T.id,market_id,reg_number,reg_number,latitude,longitude FROM trucks T INNER JOIN trucklocations TL ON T.id=TL.truck_id LEFT JOIN (select order_status_id,driver_id from orders OO inner join order_statuses OS ON OS.id=OO.order_status_id WHERE OS.status not in ('On the Way','Ready','Preparing') ) O ON O.driver_id=TL.driver_id where market_id=12 and order_status_id is null") ;
//            return response()->json([
//                "success"=>true,
//                "data"=>$details,
//                "message"=>"Time Found!"
//            ]);
//
//        }
    }

    public  function getTime($cars) {
//       $starttime = 'now';
//       $start_time    = strtotime ($starttime);
//       array_push($cars,date ("h:i", $start_time).'-'.date("h:i", $start_time));

//        $cars = array("08:00-08:45", "09:20-10:50", "12:00-12:50");

        $starting_time    = strtotime ('now');
        if($starting_time>(strtotime ('18:00')-45*60)){
            return response()->json([
                "success"=>false,
                "data"=>null,
                "message"=>"No Time Found!"
            ]);

        }
        else{
            $duration = '45';
            $add_mins  = $duration * 60;
            $array_of_time = array ();

            if(1<2){
                $close_time= explode("-", $cars[0])[0];;
                $starting_time    = strtotime ('now');

                if($starting_time<strtotime ('06:00')){

                    $starting_time=strtotime ('06:00');
                }
                else{}
                //change to strtotime
                $ending_time      = strtotime ($close_time);
                while ($starting_time+$add_mins <= $ending_time){
                    if(strtotime ('now')<$starting_time) {
                        $array_of_time[] = date("H:i", $starting_time) . '-' . date("H:i", $starting_time + $add_mins);
                    } $starting_time += $add_mins;
                }}

            if(count($cars)>1){
                for($i=1;$i<count($cars);$i++) {
                    $start= explode("-", $cars[$i-1])[1];
                    $end=explode("-", $cars[$i])[0];
                    $activehrs = ((strtotime($end) - strtotime($start)) / 3600)*60;
                    if($activehrs>60){
                        $starting_time    = strtotime ($start);
                        $ending_time    = strtotime ($end);
                        $arr=date ("H:i", $starting_time).'-'.date("H:i", $starting_time + $add_mins);
                        echo  $activehrs.'<br>';
                        echo  date ("H:i", $starting_time).'<br>';
                        echo  date ("H:i", $ending_time).'<br>';
                        echo  $arr.'<br>';
                        while ($starting_time+$add_mins <= $ending_time){

                            if(strtotime ('now')<$starting_time){
                                $array_of_time[] = date ("H:i", $starting_time).'-'.date("H:i", $starting_time + $add_mins);
                            }

                            $starting_time += $add_mins+300;
                        }
                    }
                }
            }
            else{}
            $close_time='18:00';
            $starting_time    = strtotime (explode("-", $cars[count($cars)-1])[1]); //change to strtotime
            $ending_time      = strtotime ($close_time);
            while ($starting_time+$add_mins <= $ending_time){
                if(strtotime ('now')<$starting_time) {

                    $array_of_time[] = date("H:i", $starting_time) . '-' . date("H:i", $starting_time + $add_mins);
                } $starting_time += $add_mins+300;
            }
            return $array_of_time;
        }}

}

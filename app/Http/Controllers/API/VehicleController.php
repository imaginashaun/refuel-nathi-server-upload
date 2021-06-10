<?php

namespace App\Http\Controllers\API;

use App\Models\DeliveryAddress;
use App\Vehicle;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class VehicleController extends Controller
{
    public function Store(Request $request){
        $data = new Vehicle();
        $data->driver=$request->driver;
        $data->model=$request->model;
        $data->color=$request->color;
        $data->user_id=$request->user_id;
        $data->registration=$request->registration;
        $data->save();
        return response()->json([
            "success"=>1,
            "data"=>$data,
            "message"=>""
        ]);

    }

    public function vehicles($id){
        $vehicles=  DB::select("select * from vehicles where user_id=?",[$id]);
        if (count($vehicles)) {

            return response()->json([
                "success"=>1,
                "data"=>$vehicles,
                "message"=>"Vehicles found"
            ]);
        }

        else{
            return response()->json([
                "success"=>0,
                "data"=>null,
                "message"=>"No vehicles Found"
            ]);
        }

    }

    public function removevehicle($id){
        $remove=  DB::select("delete from vehicles where id=?",[$id]);
        if ($remove) {
            return response()->json([
                "success"=>1,
                "data"=>1,
                "message"=>"Vehicles deleted"
            ]);
        }

        else{
            return response()->json([
                "success"=>0,
                "data"=>0,
                "message"=>"not deleted"
            ]);
        }
    }
    public function Update(Request $request,$id){
        $data  = Vehicle::find($id);
        $data->driver=$request->driver;
        $data->model=$request->model;
        $data->color=$request->color;
        $data->user_id=$request->user_id;
        $data->registration=$request->registration;
        $data->save();
        return response()->json([
            "success"=>1,
            "data"=>$data,
            "message"=>""
        ]);

    }


}

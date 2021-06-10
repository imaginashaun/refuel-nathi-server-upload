<?php

namespace App\Http\Controllers;

use App\Repositories\CustomFieldRepository;
use App\Repositories\DriverRepository;
use App\Repositories\MarketRepository;
use App\Repositories\RoleRepository;
use App\Repositories\UploadRepository;
use App\Repositories\TruckRepository;
use App\Truck;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

use Illuminate\Support\Facades\DB;

class TruckController extends Controller
{

    private $truckRepository;
    private $driverRepository;
    private $marketRepository;


    public function __construct(TruckRepository $truckRepo,DriverRepository  $driverRepository,MarketRepository  $marketRepository)
    {
        parent::__construct();
        $this->truckRepository = $truckRepo;
        $this->driverRepository=$driverRepository;
        $this->marketRepository=$marketRepository;

    }


    public function index(){
        $trucks=DB::select("select * from trucks");

        $trucks1 = $this->truckRepository->all();
//dd($trucks1);
        return view('trucks.index')->with("trucks",$trucks1);
    }

    public function edit($id){
        $driverss = $this->driverRepository->all();
        $markets = $this->marketRepository->all();

        $truck = $this->truckRepository->findWithoutFail($id);


        return view('trucks.edit', compact('markets','truck','driverss'));
    }
    public function create(){
        $driverss = $this->driverRepository->all();
        $markets = $this->marketRepository->all();
        return view('trucks.create', compact('markets','driverss'));
    }

    public function save(Request  $request){
        $truck= Truck::find($request->input("id"));

        $truck->market_id=$request->input('market');
        $truck->driver_id=$request->input('driver');
        $truck->capacity=$request->input('capacity');
        $truck->name=$request->input('truck_name');
        $truck->reg_number=$request->input('reg_number');
        $truck->save();

        Session::flash('message', 'Saved successfully');
        Session::flash('alert-success', 'Saved successfully');
        return redirect(route("trucks.edit",$truck->id));
    }


    public function delete($id){
        $truck= Truck::find($id);
        if($truck){
            $truck->delete();
            Session::flash('message', 'deleted successfully');
            Session::flash('alert-success', 'deleted successfully');
        }

        else{
            Session::flash('message', 'Failed to delete');
            Session::flash('alert-danger', 'Failed to delete');
        }

        return redirect(route("trucks.index"));
    }

    public function store(Request  $request){
        $truck= new Truck;
        $truck->market_id=$request->input('market');
        $truck->driver_id=$request->input('driver');
        $truck->capacity=$request->input('capacity');
        $truck->name=$request->input('truck_name');
        $truck->reg_number=$request->input('reg_number');
        $truck->save();

        Session::flash('message', 'Saved successfully');
        Session::flash('alert-success', 'Added successfully');
        return redirect(route("trucks.edit",$truck->id));
    }
}

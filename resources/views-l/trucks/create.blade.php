@extends('layouts.app')

@section('content')

    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Trucks<small class="ml-3 mr-3">|</small><small>Add Truck</small></h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('/dashboard')}}"><i class="fa fa-dashboard"></i> {{trans('lang.dashboard')}}</a></li>

                        <li class="breadcrumb-item"><a href="{!! route('trucks.index') !!}">Trucks</a>

                        <li class="breadcrumb-item active">Add Truck</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>

    <div class="flash-message container">
        @foreach (['danger', 'warning', 'success', 'info'] as $msg)
            @if(Session::has('alert-' . $msg))
                <p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }}</p>
            @endif
        @endforeach
    </div>
    <form method="post" action="{{ route('trucks.store')}}">
        @csrf
        <div class="container">
            <div class="card" style="width: 80%">
                <div class="card-body">

                    <div class="row">
                        <div class="form-group">
                            <label for="truckname">Truck name</label>
                            <input  name="truck_name" required type="text" class="form-control  input-lg" id="truckname" aria-describedby="emailHelp" placeholder="Enter name">
                        </div>

                    </div>


                    <div class="row">

                        <div class="form-group">
                            <label for="truckname">Registration Number</label>
                            <input  name="reg_number" required type="text" class="form-control  input-lg" id="truckname" aria-describedby="emailHelp" placeholder="Enter Registration Number">
                        </div>

                    </div>
                    <div class="row">

                        <div class="form-group">
                            <label for="truckname">Truck Capacity</label>
                            <input name="capacity" required type="text" class="form-control  input-lg" id="truckname" aria-describedby="emailHelp" placeholder="Enter Capacity in litres">
                        </div>

                    </div>

                    <div class="row">
                        <div class="form-group">
                            <label for="truckname">Truck Market</label>


                            <select class="selectpicker  form-control" name="market" required>
                                <option>-</option>
                                @foreach ($markets as $market)
                                    {
                                    <option value="{{ $market->id }}"

                                    >{{$market->name}}</option>
                                    }
                                @endforeach
                            </select></div>
                    </div>

                    <div class="row">
                        <div class="form-group">
                            <label for="truckname">Truck Driver</label>
                            <select class="selectpicker  form-control" name="driver" required >
                                <option>-</option>
                                @foreach ($driverss as $driver)
                                    {
                                    <option value="{{ $driver->id }}"
                                    >{{$driver->user->name}}</option>
                                    }
                                @endforeach
                            </select></div>
                    </div>

                    <div class="row">
                        <div class="form-group">
                            <button class="btn btn-primary" type="submit">Save Truck</button>
                        </div>

                    </div>
                </div>

            </div>

        </div></form>



@endsection

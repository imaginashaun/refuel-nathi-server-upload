@extends('layouts.app')

@section('content')
    <div class="card">
        <div class="card-header">
            <ul class="nav nav-tabs align-items-end card-header-tabs w-100">
                <li class="nav-item">
                    <a class="nav-link active" href="{!! url()->current() !!}"><i class="fa fa-list mr-2"></i>Trucks</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="{!! route('trucks.create') !!}"><i class="fa fa-plus mr-2"></i>Add Truck</a>
                </li>
            </ul>
        </div>

    </div>
    <div class="flash-message container">
        @foreach (['danger', 'warning', 'success', 'info'] as $msg)
            @if(Session::has('alert-' . $msg))
                <p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }}</p>
            @endif
        @endforeach
    </div>

    <div class="content">
@if($trucks)
    <table class="table" id="trucks-table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Registration</th>
            <th scope="col">Market</th>
            <th scope="col">Driver</th>
            <th scope="col">Capacity</th>
            <th scope="col">Action</th>

        </tr>
        </thead>
        <tbody>

        @foreach($trucks as $truck)

            <tr>
                <th scope="row">1</th>
                <td>{{$truck->name}}</td>
                <td>{{$truck->reg_number}}</td>
                <td>@if($truck->market) {{$truck->market->name}}@else UnAssigned @endif</td>
                <td>@if($truck->driver) {{$truck->driver->user->name}}@else UnAssigned @endif</td>
                <td>{{$truck->capacity}}</td>
                <td>

                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-toggle-second="tooltip" data-placement="right" title="Tooltip on right">
                            Action
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            @can('trucks.edit')<a class="dropdown-item" href="{{ route('trucks.edit',$truck->id)}}">Edit</a>@endif
                                @can('trucks.delete')<a class="dropdown-item" href="{{ route('trucks.delete',$truck->id)}}">Delete</a>@endif
                        </div>
                    </div>


                </td>
                </tr>
        @endforeach


        </tbody>
    </table>

    </div>
@endif
<script>
    $(document).ready( function () {
        $('#trucks-table').DataTable();
    } );


</script>

@endsection
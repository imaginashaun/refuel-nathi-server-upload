{!! Form::open(['route' => ['users.destroy', $id], 'method' => 'delete']) !!}
<div class='btn-group btn-group-sm'>
    <a data-toggle="tooltip" data-placement="bottom" title="{{trans('lang.user_edit')}}" href="{{ route('users.show', $id) }}" class='btn btn-link'>
        <i class="fa fa-eye"></i> </a>
    <a data-toggle="tooltip" data-placement="bottom" title="{{trans('lang.user_edit')}}" href="{{ route('users.edit', $id) }}" class='btn btn-link'>
        <i class="fa fa-edit"></i> </a>
    {!! Form::button('<i class="fa fa-trash"></i>', [
    'data-toggle' => 'tooltip',
    'data-placement' => 'bottom',
    'title' => trans('lang.user_delete'),
    'type' => 'submit',
    'class' => 'btn btn-link text-danger',
    'onclick' => "swal({title: ".trans('lang.error').", confirmButtonText: ".trans('lang.ok').",
                            text: data.message,type: 'error', confirmButtonClass: 'btn-danger'});"
    ]) !!}

    <div class="dropdown">
        <a class="btn btn-link btn-sm dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-cog"></i> </a>
        <div class="dropdown-menu">
            <a class='dropdown-item' href="{{ route('users.login-as-user', $id) }}"> <i class="fa fa-sign-in mr-1"></i> {{trans('lang.user_login_as_user')}}
            </a>

            <a onclick="return swal({title: '{{trans('lang.error')}}'});" class='dropdown-item' href="{{ route('users.profile') }}"><i class="fa fa-user mr-1"></i> {{trans('lang.user_profile')}} </a>



        </div>
    </div>

</div>
{!! Form::close() !!}


{{--<ul class='nav'>--}}
{{--    <li class='active'>Home</li>--}}
{{--    <li>--}}
{{--        <div class="dropdown">--}}
{{--            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Personal asset loans</a>--}}
{{--            <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">--}}
{{--                <li><a href="#">asds</a></li>--}}
{{--                <li class="divider"></li>--}}
{{--            </ul>--}}
{{--        </div>--}}
{{--    </li>--}}
{{--    <li>Payday loans</li>--}}
{{--    <li>About</li>--}}
{{--    <li>Contact</li>--}}
{{--</ul>--}}


{{--<div class="dropdown">--}}
{{--    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-toggle-second="tooltip" data-placement="right" title="Tooltip on right">--}}
{{--        Dropdown button--}}
{{--    </button>--}}
{{--    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">--}}
{{--        <a class="dropdown-item" href="#">Action</a>--}}
{{--        <a class="dropdown-item" href="#">Another action</a>--}}
{{--        <a class="dropdown-item" href="#">Something else here</a>--}}
{{--    </div>--}}
{{--</div>--}}

{{--<ul class="nav navbar-nav">--}}
{{--    <li class="btn btn-sm dropdown" id="example" data-toggle="tooltip" data-placement="right" title="Test Tooltip" >--}}
{{--        <a id="dropdown" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Im a drop down with a tooltip <span class="caret"></span></a>--}}
{{--        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdown">--}}
{{--            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Link or whatever</a></li>--}}
{{--        </ul>--}}
{{--    </li>--}}
{{--</ul>--}}

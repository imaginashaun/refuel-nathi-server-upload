@extends('layouts.app')
@push('css_lib')
    <!-- iCheck -->
    <link rel="stylesheet" href="{{asset('plugins/iCheck/flat/blue.css')}}">
    <!-- select2 -->
    <link rel="stylesheet" href="{{asset('plugins/select2/select2.min.css')}}">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="{{asset('plugins/summernote/summernote-bs4.css')}}">
    {{--dropzone--}}
    <link rel="stylesheet" href="{{asset('plugins/dropzone/bootstrap.min.css')}}">
@endpush
@section('content')
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">{!! trans('lang.user_profile') !!} <small>{{trans('lang.media_desc')}}</small></h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('/dashboard')}}"><i class="fa fa-dashboard"></i> {{trans('lang.dashboard')}}</a></li>
                        <li class="breadcrumb-item active">{{trans('lang.user_profile')}}</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">

                    <!-- Profile Image -->
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title"><i class="fa fa-user mr-2"></i> {{trans('lang.user_about_me')}}</h3>
                        </div>
                        <div class="card-body box-profile">
                            <div class="text-center">
                                <img src="{{auth()->user()->getFirstMediaUrl('avatar','icon')}}" class="profile-user-img img-fluid img-circle" alt="{{auth()->user()->name}}">
                            </div>
                            <h3 class="profile-username text-center">{{auth()->user()->name}}</h3>
                            <p class="text-muted text-center">{{implode(', ',$rolesSelected)}}</p>
                            <a class="btn btn-outline-{{setting('theme_color')}} btn-block" href="mailto:{{auth()->user()->email}}"><i class="fa fa-envelope mr-2"></i>{{auth()->user()->email}}
                            </a>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->

                @if($customFields)
                    <!-- About Me Box -->
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title"><i class="fa fa-list mr-2"></i>{{trans('lang.custom_field_plural')}}</h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                @foreach($customFieldsValues as $value)
                                    <strong>{{trans('lang.user_'.$value->customField->name)}}</strong>
                                    <p class="text-muted">
                                        {!! $value->view !!}
                                    </p>
                                    @if(!$loop->last)
                                        <hr> @endif
                                @endforeach
                            </div>
                            <!-- /.card-body -->
                        </div>
                    <!-- /.card -->
                    @endif
                </div>
                <!-- /.col -->
                <div class="col-md-9">
                    @include('flash::message')
                    @include('adminlte-templates::common.errors')
                    <div class="clearfix"></div>
                    <div class="card">
                        <div class="card-header">
                            <ul class="nav nav-tabs align-items-end card-header-tabs w-100">
                                <li class="nav-item">
                                    <a class="nav-link active" href="{!! url()->current() !!}"><i class="fa fa-cog mr-2"></i>{{trans('lang.app_setting')}}</a>
                                </li>
                                @hasrole('client')
                                <div class="ml-auto d-inline-flex">
                                    <li class="nav-item">
                                        <a class="nav-link pt-1" href="{!! route('markets.create') !!}"><i class="fa fa-check-o"></i> {{trans('lang.app_setting_become_store_owner')}}</a>
                                    </li>
                                </div>
                                @endhasrole





                            </ul>
                        </div>


                        <div class="card-body">
{{ $user->id}}
                            {!! Form::model($user, ['route' => ['users.update', $user->id], 'method' => 'patch']) !!}
                            <div class="row">
                                @include('settings.users.fields')
                            </div>
                            {!! Form::close() !!}
                            <div class="clearfix"></div>

                            <?php $count = 0;?>

{{--                            @hasrole('Pending Distributor')--}}

                            @hasrole('admin')

                        @if($mediaItems)
                                <div class="card-header">
                                    <h3 class="card-title"><i class="fa fa-list mr-2"></i>Distributor Documents</h3>
                                </div>
                                @foreach($mediaItems as $media)
                                    <div class="modal fade" id="modal{{$media->id}}" tabindex="-1" role="dialog" aria-labelledby="gardenImageLabel">
                                        <div class="modal-dialog modal-lg" role="document">
                                            <div class="modal-content">
                                                <div class="modal-body">
                                                    <img id="myImage" class="img-responsive" src={{$media->getUrl()}} alt="" width="100%">
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-danger center-block" data-dismiss="modal">close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    @if($count == 0)
                                        <div class="row">@endif
                                            <div class="col-sm-4 col-md-4">
                                                <div class="card" style="width: 18rem;">
                                                        <img src="{{$media->thumb}}" class="card-img-bottom" alt="...">
                                                    <div class="card-body">
                                                        <h5 class="card-title">{{$media->mime_type}}</h5>

                                                        @if($media->mime_type=='image/png'||$media->mime_type=='image/jpeg'|| $media->mime_type=='image/jpg')

                                                        <a href= "#modal{{$media->id}}" data-id="modal{{$media->id}}" class="btn btn-outline-{{setting('theme_color','primary')}}" data-toggle="modal" class="openImageDialog">
                                                            Open
                                                        </a>
                                                            @else  <a href= "{{$media->getUrl()}}"  class="btn btn-outline-{{setting('theme_color','primary')}}" >
                                                            Open
                                                        </a>@endif
                                                    </div>
                                                </div>
                                            </div>
                                            @if($count == 3)
                                                <?php $count = 0;?>
                                        </div>
                                    @else
                                        <?php $count++;?>
                                    @endif

                                     @endforeach



                             @endif  @endif
                         </div>


                     </div>


                 </div>
             </div>


         </div>
     </section>

    <div class="modal fade" id="gardenImage" tabindex="-1" role="dialog" aria-labelledby="gardenImageLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <img id="myImage" class="img-responsive" src="" alt="">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger center-block" data-dismiss="modal">close</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).on("click", ".openImageDialog", function () {
            var myImageId = $(this).data('data-id');

            alert(myImageId)

            console.log(myImageId)
            $(".modal-body #myImage").attr("src", myImageId);
        })

    </script>
     @include('layouts.media_modal',['collection'=>null])
 @endsection
 @push('scripts_lib')
     <!-- iCheck -->
     <script src="{{asset('plugins/iCheck/icheck.min.js')}}"></script>
    <!-- select2 -->
    <script src="{{asset('plugins/select2/select2.min.js')}}"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="{{asset('plugins/summernote/summernote-bs4.min.js')}}"></script>
    {{--dropzone--}}
    <script src="{{asset('plugins/dropzone/dropzone.js')}}"></script>
    <script type="text/javascript">
        Dropzone.autoDiscover = false;
        var dropzoneFields = [];
    </script>
@endpush
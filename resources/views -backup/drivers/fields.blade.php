@if($customFields)
<h5 class="col-12 pb-4">{!! trans('lang.main_fields') !!}</h5>
@endif




@prepend('scripts')
  <script type="text/javascript">
    var var15671147011688676454bledf = '';
    @if(isset($market) && $market->hasMedia('drivers_licence'))
            var15671147011688676454bledf = {
      name: "{!! $market->getFirstMedia('drivers_licence')->name !!}",
      size: "{!! $market->getFirstMedia('drivers_licence')->size !!}",
      type: "{!! $market->getFirstMedia('drivers_licence')->mime_type !!}",
      collection_name: "{!! $market->getFirstMedia('drivers_licence')->collection_name !!}"
    };
    @endif
    var dz_var15671147011688676454bledf = $(".dropzone.drivers_licence").dropzone({
      url: "{!!url('uploads/store')!!}",
      addRemoveLinks: true,
      maxFiles: 1,
      init: function () {
        @if(isset($market) && $market->hasMedia('drivers_licence'))
        dzInit(this, var15671147011688676454bledf, '{!! url($market->getFirstMediaUrl('drivers_licence','thumb')) !!}')
        @endif
      },
      accept: function (file, done) {
        dzAccept(file, done, this.element, "{!!config('medialibrary.icons_folder')!!}");
      },
      sending: function (file, xhr, formData) {
        dzSending(this, file, formData, '{!! csrf_token() !!}');
      },
      maxfilesexceeded: function (file) {
        dz_var15671147011688676454bledf[0].mockFile = '';
        dzMaxfile(this, file);
      },
      complete: function (file) {
        dzComplete(this, file, var15671147011688676454bledf, dz_var15671147011688676454bledf[0].mockFile);
        dz_var15671147011688676454bledf[0].mockFile = file;
      },
      removedfile: function (file) {
        dzRemoveFile(
                file, var15671147011688676454bledf, '{!! url("markets/remove-media") !!}',
                'drivers_licence', '{!! isset($market) ? $market->id : 0 !!}', '{!! url("uplaods/clear") !!}', '{!! csrf_token() !!}'
        );
      }
    });
    dz_var15671147011688676454bledf[0].mockFile = var15671147011688676454bledf;
    dropzoneFields['drivers_licence'] = dz_var15671147011688676454bledf;
  </script>


  <script type="text/javascript">
    var var15671147011688676454bledfi = '';
    @if(isset($market) && $market->hasMedia('vehicle_insurance'))
            var15671147011688676454bledfi = {
      name: "{!! $market->getFirstMedia('vehicle_insurance')->name !!}",
      size: "{!! $market->getFirstMedia('vehicle_insurance')->size !!}",
      type: "{!! $market->getFirstMedia('vehicle_insurance')->mime_type !!}",
      collection_name: "{!! $market->getFirstMedia('vehicle_insurance')->collection_name !!}"
    };
    @endif
    var dz_var15671147011688676454bledfi = $(".dropzone.vehicle_insurance").dropzone({
      url: "{!!url('uploads/store')!!}",
      addRemoveLinks: true,
      maxFiles: 1,
      init: function () {
        @if(isset($market) && $market->hasMedia('vehicle_insurance'))
        dzInit(this, var15671147011688676454bledfi, '{!! url($market->getFirstMediaUrl('vehicle_insurance','thumb')) !!}')
        @endif
      },
      accept: function (file, done) {
        dzAccept(file, done, this.element, "{!!config('medialibrary.icons_folder')!!}");
      },
      sending: function (file, xhr, formData) {
        dzSending(this, file, formData, '{!! csrf_token() !!}');
      },
      maxfilesexceeded: function (file) {
        dz_var15671147011688676454bledfi[0].mockFile = '';
        dzMaxfile(this, file);
      },
      complete: function (file) {
        dzComplete(this, file, var15671147011688676454bledfi, dz_var15671147011688676454bledfi[0].mockFile);
        dz_var15671147011688676454bledfi[0].mockFile = file;
      },
      removedfile: function (file) {
        dzRemoveFile(
                file, var15671147011688676454bledfi, '{!! url("markets/remove-media") !!}',
                'vehicle_insurance', '{!! isset($market) ? $market->id : 0 !!}', '{!! url("uplaods/clear") !!}', '{!! csrf_token() !!}'
        );
      }
    });
    dz_var15671147011688676454bledfi[0].mockFile = var15671147011688676454bledfi;
    dropzoneFields['vehicle_insurance'] = dz_var15671147011688676454bledfi;
  </script>

@endprepend

<div style="flex: 50%;max-width: 50%;padding: 0 4px;" class="column">

<!-- Delivery Fee Field -->
<div class="form-group row ">
  {!! Form::label('delivery_fee', trans("lang.driver_delivery_fee"), ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    {!! Form::number('delivery_fee', null,  ['class' => 'form-control','placeholder'=>  trans("lang.driver_delivery_fee_placeholder")]) !!}
    <div class="form-text text-muted">
      {{ trans("lang.driver_delivery_fee_help") }}
    </div>
  </div>
</div>

  <div class="form-group row ">
    {!! Form::label('vehicle_model', trans("lang.vehicle_model"), ['class' => 'col-3 control-label text-right']) !!}
    <div class="col-9">
      {!! Form::text('vehicle_model', null,  ['class' => 'form-control','placeholder'=>  trans("lang.vehicle_model_placeholder")]) !!}
      <div class="form-text text-muted">
        {{ trans("lang.vehicle_model_help") }}
      </div>
    </div>
  </div>


  <div class="form-group row">
    {!! Form::label('vehicle_insurance', trans("lang.vehicle_insurance"), ['class' => 'col-3 control-label text-right']) !!}
    <div class="col-9">
      <div style="width: 100%" class="dropzone vehicle_insurance" id="vehicle_insurance" data-field="vehicle_insurance">
        <input type="hidden" name="vehicle_insurance">
      </div>
      <div class="form-text text-muted w-full">
        {{ trans("lang.vehicle_insurance_help") }}
      </div>
    </div>
  </div>


  <!-- File Field   -->
  <div class="form-group row">
    {!! Form::label('drivers_licence', trans("lang.drivers_licence"), ['class' => 'col-3 control-label text-right']) !!}
    <div class="col-9">
      <div style="width: 100%" class="dropzone drivers_licence" id="drivers_licence" data-field="drivers_licence">
        <input type="hidden" name="drivers_licence">
      </div>
      <div class="form-text text-muted w-full">
        {{ trans("lang.drivers_licence_help") }}
      </div>
    </div>
  </div>
</div>
<div style="flex: 50%;max-width: 50%;padding: 0 4px;" class="column">

<!-- 'Boolean Available Field' -->
<div class="form-group row ">
  {!! Form::label('available', trans("lang.driver_available"),['class' => 'col-3 control-label text-right']) !!}
  <div class="checkbox icheck">
    <label class="col-9 ml-2 form-check-inline">
      {!! Form::hidden('available', 0) !!}
      {!! Form::checkbox('available', 1, null) !!}
    </label>
  </div>
</div>

</div>
@if($customFields)
<div class="clearfix"></div>
<div class="col-12 custom-field-container">
  <h5 class="col-12 pb-4">{!! trans('lang.custom_field_plural') !!}</h5>
  {!! $customFields !!}
</div>
@endif
<!-- Submit Field -->
<div class="form-group col-12 text-right">
  <button type="submit" class="btn btn-{{setting('theme_color')}}" ><i class="fa fa-save"></i> {{trans('lang.save')}} {{trans('lang.driver')}}</button>
  <a href="{!! route('drivers.index') !!}" class="btn btn-default"><i class="fa fa-undo"></i> {{trans('lang.cancel')}}</a>
</div>

@extends('admin.master')
@section('content')
  <!-- Title area -->
  @include('admin.slide.header')
  <!-- Message -->
  <!-- Main content wrapper -->
 <div class="wrapper">
  <!-- Form -->
  <form class="form" id="form" action="{{route('slide.postedit',$slide->id)}}" method="post" enctype="multipart/form-data">
    <input type="hidden" name="_token" value="{{csrf_token()}}">
    <fieldset>
    <div class="widget">
      <div class="title btitle"> <img src="admin_assets/images/icons/dark/add.png" class="titleIcon" />
        <h6>Sửa</h6>
      </div>
      <ul class="tabs">
        <li><a href="#tab1">Thông tin chung</a></li>
      </ul>
      <div class="tab_container">
        <div id='tab1' class="tab_content pd0">
          <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Title:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="txtName" id="param_name"  type="text" value="{!! old('txtName',isset($slide) ? $slide->name : null) !!}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle">Hình ảnh:</label>
            <div class="formRight">
              <div class="left">
                <input type="file" id="image" name="fImage" >
                <img src="uploads/slide/{{$slide->image_link}}" width="300px">
                <input type="hidden" name="current_image" value="{{$slide->image_link}}">              
              </div>
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Liên kết:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="txtLink" id="param_name" type="text" value="{!! old('txtLink',isset($slide) ? $slide->link : null) !!}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Thứ tự:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="txtSort" id="param_name" _autocheck="true" type="text" value="{!! old('txtSort',isset($slide) ? $slide->sort_order : null) !!}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
          
         
      </div>
      <!-- End tab_container-->
      <div class="formSubmit">
        <input type="submit" value="Lưu" class="redB" />
        <input type="reset" value="Hủy bỏ" class="basic" />
      </div>
      <div class="clear"></div>
    </div>
    </fieldset>
  </form>
</div>
  <div class="clear mt30"></div>
@endsection
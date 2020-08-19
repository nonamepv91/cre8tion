@extends('admin.master')
@section('content')
  <!-- Title area -->
  @include('admin.banner.header')
  <!-- Message -->
  <!-- Main content wrapper -->
 <div class="wrapper">
  <!-- Form -->
  <form class="form" id="form" action="{{route('banner.postedit',$banner->id)}}" method="post" enctype="multipart/form-data">
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
            <label class="formLeft ntitle" for="param_name">Title:<span class="req">*</span></label>
            <div class="formRight"> <span class="oneTwo">
              <input name="txtName" id="param_name"  type="text" value="{!! old('txtName',isset($banner) ? $banner->name : null) !!}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
              <label class="formLeft ntitle" for="param_cat">Vị trí:<span class="req">*</span></label>
              <div class="formRight">
                <select name="txtLocation">
                  <option value="{{$banner->location}}">{{$banner->location}}</option>
                  <!-- kiem tra danh muc co danh muc con hay khong -->
                  <option value="pagetop"> pagetop </option>
                  <option value="content1"> content1 </option>
                  <option value="content2"> content2 </option>
                  <option value="content3"> content3 </option>
                  <option value="content4"> content4 </option>
                  <option value="content5"> content5 </option>                               
                </select>
              </div>
              <div class="clear"></div>
            </div>
           <div class="formRow">
            <label class="formLeft ntitle">Hình ảnh:</label>
            <div class="formRight">
              <div class="left">
                <input type="file" id="image" name="txtfImage" >
                <img src="uploads/banner/{{$banner->image_link}}" width="300px">
                <input type="hidden" name="current_image" value="{{$banner->image_link}}">              
              </div>
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Liên kết:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="txtLink" id="param_name" type="text" value="{!! old('txtLink',isset($banner) ? $banner->link : null) !!}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Thứ tự:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="txtSort" id="param_name" _autocheck="true" type="text" value="{!! old('txtSort',isset($banner) ? $banner->sort_order : null) !!}" />
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
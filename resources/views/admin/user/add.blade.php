@extends('admin.master')
@section('content')
  <!-- Title area -->
  @include('admin.user.header')
  <!-- Message -->
  <!-- Main content wrapper -->
 <div class="wrapper">
  <!-- Form -->
  <form class="form" id="form" action="{{route('user.postadd')}}" method="post" enctype="multipart/form-data">
      <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
    <fieldset>
    <div class="widget">
      <div class="title btitle"> <img src="admin_assets/images/icons/dark/add.png" class="titleIcon" />
        <h6>Thêm mới</h6>
      </div>
      <ul class="tabs">
        <li><a href="#tab1">Thông tin chung</a></li>
      </ul>
      <div class="tab_container">
        <div id='tab1' class="tab_content pd0">
          <div class="formRow">
            <label class="formLeft ntitle">Họ tên:</label>
            <div class="formRight">
              <input name="txtName" type="text" placeholder="Please Enter Full Name" value="{!! old('txtName') !!}" />
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle">Email đăng nhập:</label>
            <div class="formRight">
              <input name="txtEmail" type="text" placeholder="Please Enter Email Login" value="{!! old('txtEmail') !!}" />
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label class="formLeft ntitle">Mật khẩu:</label>
            <div class="formRight"> 
              <input name="txtPass" type="Password" placeholder="Please Enter Password" value="{!! old('txtPass') !!}" />
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label class="formLeft ntitle">Nhập lại mật khẩu:</label>
            <div class="formRight">
              <input name="txtRePass" type="Password" placeholder="Please Enter RePassword" value="{!! old('txtRePass') !!}" />
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
              <label class="formLeft ntitle">Quyền:</label>
              <div class="formRight">
                <select name="txtLevel">
                  <option>Chọn quyền users</option>
                  <option value="0"> Admin </option>
                  <option value="1"> Member </option>
                </select>
              </div>
              <div class="clear"></div>
            </div>
           <div class="formRow">
            <label class="formLeft ntitle">Hình ảnh đại diện:</label>
            <div class="formRight">
              <div class="left">
                <input type="file" id="image" name="txtfImage" value="{!! old('fImage') !!}">               
              </div>
            </div>
            <div class="clear"></div>
          </div>
      </div>
      <!-- End tab_container-->
      <div class="formSubmit">
        <input type="submit" value="Thêm mới" class="redB" />
        <input type="reset" value="Hủy bỏ" class="basic" />
      </div>
      <div class="clear"></div>
    </div>
    </fieldset>
  </form>
</div>
  <div class="clear mt30"></div>
@endsection
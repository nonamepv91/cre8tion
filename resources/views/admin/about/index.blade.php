@extends('admin.master')
@section('content')
<div class="titleArea">
    <div class="wrapper">
      <div class="pageTitle">
        <h5>Giới thiệu</h5>
        <span>Quản lý giới thiệu</span> </div>
      <div class="clear"></div>
      @include('admin.blocks.errors')
    </div>
  </div>
  <div class="line"></div>
<div class="wrapper">
  <!-- Form -->
  <form class="form" id="form" action="{{Route('addabout', $about->id)}}" method="post" enctype="multipart/form-data">
    <input type="hidden" name="_token" value="{{csrf_token()}}">
    <fieldset>
    <div class="widget">
      <div class="title btitle"> <img src="admin_assets/images/icons/dark/process.png" class="titleIcon" />
        <h6>Giới thiệu</h6>
      </div>
      <ul class="tabs">
        <li><a href="#tab1">Thông tin chung</a></li>
      </ul>
      <div class="tab_container">
        <div id='tab1' class="tab_content pd0">
          <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Tiêu đề(vi):</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="title_vi" id="param_name" _autocheck="true" type="text" placeholder="Please Enter Title Vi" value="{{$about->title_vi}}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Tiêu đề(en):</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="title_en" id="param_name" _autocheck="true" type="text" placeholder="Please Enter Title EN" value="{{$about->title_en}}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle" for="param_sale">Nội dung(vi):</label>
            <div class="formRight"> <span class="oneTwo">
              <textarea name="content_vi" id="param_sale111" rows="4" cols="" placeholder="Please Enter Keyword" class="editor">{{$about->content_vi}}</textarea>
              </span>
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle" for="param_sale">Nội dung(en):</label>
            <div class="formRight"> <span class="oneTwo">
              <textarea name="content_en" id="param_sale11" rows="4" cols="" placeholder="Please Enter Keyword" class="editor">{{$about->content_en}}</textarea>
              </span>
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow hide"></div>
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
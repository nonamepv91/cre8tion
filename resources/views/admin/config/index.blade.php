@extends('admin.master')
@section('content')
<div class="titleArea">
    <div class="wrapper">
      <div class="pageTitle">
        <h5>Thiết lập hệ thống</h5>
        <span>Quản lý thiết lập</span> </div>
      <div class="clear"></div>
      @include('admin.blocks.errors')
    </div>
  </div>
  <div class="line"></div>
<div class="wrapper">
  <!-- Form -->
  <form class="form" id="form" action="{{Route('addconfig', $config->id)}}" method="post" enctype="multipart/form-data">
    <input type="hidden" name="_token" value="{{csrf_token()}}">
    <fieldset>
    <div class="widget">
      <div class="title btitle"> <img src="admin_assets/images/icons/dark/process.png" class="titleIcon" />
        <h6>Thiết lập hệ thống</h6>
      </div>
      <ul class="tabs">
        <li><a href="#tab1">Thông tin chung</a></li>
      </ul>
      <div class="tab_container">
        <div id='tab1' class="tab_content pd0">
          <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Title:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="title" id="param_name" _autocheck="true" type="text" placeholder="Please Enter Product Name" value="{{$config->title}}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Company:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="company" id="param_name" _autocheck="true" type="text" placeholder="Please Enter Product Name" value="{{$config->company}}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Hotline:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="hotline" id="param_name" _autocheck="true" type="text" placeholder="Please Enter Product Name" value="{{$config->hotline}}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Phone:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="phone" id="param_name" _autocheck="true" type="text" placeholder="Please Enter Product Name" value="{{$config->phone}}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Email:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="email" id="param_name" _autocheck="true" type="text" placeholder="Please Enter Product Name" value="{{$config->email}}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle" for="param_sale">Content:</label>
            <div class="formRight"> <span class="oneTwo">
              <textarea name="content" id="param_sale" rows="4" cols="" placeholder="Please Enter Keyword">{{$config->content}}</textarea>
              </span>
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label class="formLeft ntitle">Logo:</label>
            <div class="formRight">
              <div class="left">
                <input type="file" id="image" name="logo"  >
                <span><img src="assets/images/{{$config->logo}}" alt=""></span>
                <input type="hidden" name="current_logo" value="{{$config->logo}}">
              </div>
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label class="formLeft ntitle">Favicon:</label>
            <div class="formRight">
              <div class="left">
                <input type="file" id="image" name="favicon"  >
                <span><img  src="assets/images/{{$config->favicon}}" alt=""></span>
                <input type="hidden" name="current_favicon" value="{{$config->favicon}}">
              </div>
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle" for="param_sale">Keyword:</label>
            <div class="formRight"> <span class="oneTwo">
              <textarea name="keyword" id="param_sale1" rows="4" cols="" placeholder="Please Enter Keyword">{{$config->keyword}}</textarea>
              </span>
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle" for="param_sale">Description:</label>
            <div class="formRight"> <span class="oneTwo">
              <textarea name="description" id="param_sale" rows="4" cols="" placeholder="Please Enter Keyword">{{$config->description}}</textarea>
              </span> 
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label class="formLeft ntitle" for="param_sale">Fanpage:</label>
            <div class="formRight"> <span class="oneTwo">
              <textarea name="fanpage" id="param_sale11" rows="4" cols="" placeholder="Please Enter Keyword" class="editor">{{$config->fanpage}}</textarea>
              </span>
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label class="formLeft ntitle" for="param_sale">Boxchat:</label>
            <div class="formRight"> <span class="oneTwo">
              <textarea name="boxchat" id="param_sale2" rows="4" cols="" placeholder="Please Enter Description" class="editor">{{$config->boxchat}}</textarea>
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
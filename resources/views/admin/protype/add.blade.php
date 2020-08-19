@extends('admin.master')
@section('content')
  <!-- Title area -->
  @include('admin.protype.header')
  <!-- Message -->
  <!-- Main content wrapper -->
 <div class="wrapper">
  <!-- Form -->
  <form class="form" id="form" action="{{route('protype.postadd')}}" method="post" enctype="multipart/form-data">
    <input type="hidden" name="_token" value="{{csrf_token()}}">
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
            <label class="formLeft ntitle" for="param_name">Tên:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="txtName" id="param_name" type="text" placeholder="Please Enter Product Name" value="{!! old('txtName') !!}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Danh mục:</label>
            <div class="formRight"> <span class="oneTwo">
              <select class="form-control" name="txtCategory">
                <option value="">Chọn Danh Mục</option>
                @foreach($cate as $item)
                  <option value="{{$item->id}}">{{$item->name}}</option>
                @endforeach
            </select>
              </span>
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle">Hình ảnh:</label>
            <div class="formRight">
              <div class="left">
                <input type="file" id="image" name="fImage" value="{!! old('fImage') !!}">               
              </div>
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Từ khóa:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="txtKeyword" id="param_name" type="text" placeholder="Please Enter link" value="{!! old('txtKeyword') !!}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Mô tả:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="txtDescription" id="param_name" type="text" placeholder="Please Enter link" value="{!! old('txtDescription') !!}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Thứ tự:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="txtSort" id="param_name" type="text" placeholder="Please Enter Sort_order" value="{!! old('txtSort') !!}" />
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
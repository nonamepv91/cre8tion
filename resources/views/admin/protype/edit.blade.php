@extends('admin.master')
@section('content')
  <!-- Title area -->
  @include('admin.protype.header')
  <!-- Message -->
  <!-- Main content wrapper -->
 <div class="wrapper">
  <!-- Form -->
  <form class="form" id="form" action="{{route('protype.postedit',$protype->id)}}" method="post" enctype="multipart/form-data">
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
              <input name="txtName" id="param_name" type="text" value="{!! old('txtName'), isset($protype) ? $protype->name : null !!}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Danh mục:</label>
            <div class="formRight"> <span class="oneTwo">
              <select class="form-control" name="txtCategory">
                  @foreach($cate as $item)
                    <option @if($protype->category->id == $item->id){{"selected"}}@endif value="{{$item->id}}">{{$item->name}}
                    </option>
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
                <img src="uploads/protype/{{$protype->image_link}}" width="350px">
                <input type="hidden" name="current_image" value="{{$protype->image_link}}">             
              </div>
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Từ khóa:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="txtKeyword" id="param_name" type="text"  value="{!! old('txtKeyword'), isset($protype) ? $protype->keyword : null !!}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
          <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Mô tả:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="txtDescription" id="param_name" type="text" value="{!! old('txtDescription'), isset($protype) ? $protype->description : null !!}" />
              </span>
            </div>
            <div class="clear"></div>
          </div>
           <div class="formRow">
            <label class="formLeft ntitle" for="param_name">Thứ tự:</label>
            <div class="formRight"> <span class="oneTwo">
              <input name="txtSort" id="param_name" type="text" value="{!! old('txtSort'), isset($protype) ? $protype->sort_order : null !!}" />
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
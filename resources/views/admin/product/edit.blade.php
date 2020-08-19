@extends('admin.master')
@section('content')
  <!-- Title area -->
  @include('admin.product.header')
  <!-- Message -->
  <!-- Main content wrapper -->
 <div class="wrapper">
    <!-- Form -->
    <form class="form" id="form" action="{{route('product.postedit', $product->id)}}" method="post" name="frmEditProduct" enctype="multipart/form-data">
      <input type="hidden" name="_token" value="{!! csrf_token() !!}">
      <fieldset>
      <div class="widget">
        <div class="title btitle"> <img src="admin_assets/images/icons/dark/add.png" class="titleIcon" />
          <h6>Thêm mới</h6>
        </div>
        <ul class="tabs">
          <li><a href="#tab1">Thông tin chung</a></li>
          <li><a href="#tab2">Ảnh kèm theo</a></li>
        </ul>
        <div class="tab_container">
          <div id='tab1' class="tab_content pd0">
            <div class="formRow">
              <label class="formLeft ntitle" for="param_name">Tên:<span class="req">*</span></label>
              <div class="formRight"> <span class="oneTwo">
                <input name="txtName" type="text" value="{!! old('txtName'), isset($product) ? $product->name : null !!}" />
                </span> 
              </div>
              <div class="clear"></div>
            </div>
            <div class="formRow">
              <label class="formLeft ntitle" for="param_name">Item:<span class="req">*</span></label>
              <div class="formRight"> <span class="oneTwo">
                <input name="txtItem" type="text" value="{!! old('txtItem'), isset($product) ? $product->item_code : null !!}" />
                </span>
              </div>
              <div class="clear"></div>
            </div>
             <div class="formRow">
              <label class="formLeft ntitle" for="param_cat">Thể loại:<span class="req">*</span></label>
              <div class="formRight">
                <select name="txtType" id='param_cat' class="left">
                  <option>-- Lựa chọn danh mục --</option>
                  <!-- kiem tra danh muc co danh muc con hay khong -->
                  @foreach($cate as $item)
                  @if(count($item->product_type) > 0)
                  <optgroup label="{{$item->name}}">
                    @foreach($item->product_type as $subitem)
                    <option @if ($subitem->id == $product->id_type) {{"selected"}}@endif value="{{$subitem->id}}"> {{$subitem->name}} </option>
                    @endforeach
                  </optgroup>
                  @endif
                  @endforeach
                </select>
              </div>
              <div class="clear"></div>
            </div>
            <div class="formRow">
              <label class="formLeft ntitle">Hình ảnh:<span class="req">*</span></label>
              <div class="formRight">
                <div class="left">
                  <input type="file"  id="image" name="fImage">
                  <img src="uploads/product/{!! isset($product) ? $product->image_link : null !!}" width="300px">
                  <input type="hidden" name="current_image" value="{{$product->image_link}}">
                </div>
              </div>
              <div class="clear"></div>
            </div>
            <!-- Price -->
            <div class="formRow">
              <label class="formLeft ntitle" for="param_price">Giá:</label>
              <div class="formRight"> <span class="oneTwo">
                <input name="txtPrice"  style='width:100px' type="text" value="{!! old('txtPrice'), isset($product) ? $product->price : null !!}" />
                <img class='tipS' title='Giá bán sử dụng để giao dịch' style='margin-bottom:-8px'  src='admin_assets/crown/images/icons/notifications/information.png'/> </span> <span name="price_autocheck" class="autocheck"></span>
              </div>
              <div class="clear"></div>
            </div>
            <!-- Price -->
            <div class="formRow">
              <label class="formLeft ntitle" for="param_discount">Giảm giá:</label>
              <div class="formRight"> <span>
                <input name="txtDiscount"  style='width:100px' type="text" value="{!! old('txtDiscount'), isset($product) ? $product->discount_price : null !!}" />
                <img class='tipS' title='Số tiền giảm giá' style='margin-bottom:-8px'  src='admin_assets/crown/images/icons/notifications/information.png'/> </span> <span name="discount_autocheck" class="autocheck"></span>
              </div>
              <div class="clear"></div>
            </div>
           
            <!-- warranty -->
            <div class="formRow">
              <label class="formLeft ntitle" for="param_sale">Thông tin sản phẩm:</label>
              <div class="formRight"> <span class="oneTwo">
                <textarea name="txtDetail" id="param_sale" rows="4" class="editor">{!! old('txtDetail'), isset($product) ? $product->detail : null !!}</textarea>
                </span> 
              </div>
              <div class="clear"></div>
            </div>
            <div class="formRow">
              <label class="formLeft ntitle" for="param_sale">Từ khóa:</label>
              <div class="formRight"> <span class="oneTwo">
                <textarea name="txtKeyword" rows="4" id="param_sale1">{!! old('txtKeyword'), isset($product) ? $product->keyword : null !!}</textarea>
                </span>
              </div>
              <div class="clear"></div>
            </div>

             <div class="formRow">
              <label class="formLeft ntitle" for="param_sale">Mô tả:</label>
              <div class="formRight"> 
                <span class="oneTwo">
                  <textarea name="txtDescription" id="param_sale2" rows="4">{!! old('txtDescription'), isset($product) ? $product->description : null !!}</textarea>
                </span>
              </div>
              <div class="clear"></div>
            </div>
            <div class="formRow">
              <label class="formLeft ntitle" for="param_name">Thứ tự:</label>
              <div class="formRight"> <span class="oneTwo">
                <input name="txtSort" type="text" value="{!! old('txtSort'), isset($product) ? $product->sort_order : null !!}" />
                </span>
              </div>
              <div class="clear"></div>
            </div>
            <div class="formRow hide"></div>
          </div>
          <div id='tab2' class="tab_content pd0" >
            @foreach($product->product_image as $key => $item)
             <div class="formRow" id="{{ $key }}">
                <img src="{!! asset('uploads/detail/'.$item->image)!!}" alt="" width="300px" class="detail-img" idimg="{!! $item->id !!}" id="{!! $key !!}">
                <a href="javascript:void(0)" type="button" id="del-img"><img src="admin_assets/images/remove.png"></a>
              </div>
            @endforeach
          <div id="insert"></div>
          <button type="button" id="addImages">Add Images</button>
         
            <div class="formRow hide"></div>
          </div>
          
        </div>
        <!-- End tab_container-->
        <div class="formSubmit">
          <input type="submit" value="Sửa" class="redB" />
        </div>
        <div class="clear"></div>
      </div>
      </fieldset>
    </form>
  </div>
  <div class="clear mt30"></div>
@endsection

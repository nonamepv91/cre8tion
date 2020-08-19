@extends('admin.master')
@section('content')
  <!-- Title area -->
  @include('admin.product.header')
  <!-- Message -->
  <!-- Main content wrapper -->
 <div class="wrapper">
    <!-- Form -->
    <form class="form" id="form" action="{{route('product.postadd')}}" method="post" enctype="multipart/form-data">
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
                <input name="txtName" id="param_name" _autocheck="true" type="text" placeholder="Please Enter Product Name" />
                </span> <span name="name_autocheck" class="autocheck"></span>
              </div>
              <div class="clear"></div>
            </div>
            <div class="formRow">
              <label class="formLeft ntitle" for="param_name">Item:<span class="req">*</span></label>
              <div class="formRight"> <span class="oneTwo">
                <input name="txtItem" id="param_name" _autocheck="true" type="text" placeholder="Please Enter Product Item" />
                </span> <span name="name_autocheck" class="autocheck"></span>
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
                    <option value="{{$subitem->id}}"> {{$subitem->name}} </option>
                    @endforeach
                  </optgroup>
                  @endif
                  @endforeach
                </select>
                <span name="cat_autocheck" class="autocheck"></span>
              </div>
              <div class="clear"></div>
            </div>
            <div class="formRow">
              <label class="formLeft ntitle">Hình ảnh:<span class="req">*</span></label>
              <div class="formRight">
                <div class="left">
                  <input type="file"  id="image" name="fImage"  >
                </div>
              </div>
              <div class="clear"></div>
            </div>
            <!-- Price -->
            <div class="formRow">
              <label class="formLeft ntitle" for="param_price">Giá:</label>
              <div class="formRight"> <span class="oneTwo">
                <input name="txtPrice"  style='width:100px' id="param_price"  _autocheck="true" type="text" />
                <img class='tipS' title='Giá bán sử dụng để giao dịch' style='margin-bottom:-8px'  src='admin_assets/crown/images/icons/notifications/information.png'/> </span> <span name="price_autocheck" class="autocheck"></span>
              </div>
              <div class="clear"></div>
            </div>
            <!-- Price -->
            <div class="formRow">
              <label class="formLeft ntitle" for="param_discount">Giảm giá:</label>
              <div class="formRight"> <span>
                <input name="txtDiscount"  style='width:100px' id="param_discount" type="text" />
                <img class='tipS' title='Số tiền giảm giá' style='margin-bottom:-8px'  src='admin_assets/crown/images/icons/notifications/information.png'/> </span> <span name="discount_autocheck" class="autocheck"></span>
              </div>
              <div class="clear"></div>
            </div>
           
            <!-- warranty -->
            <div class="formRow">
              <label class="formLeft ntitle" for="param_sale">Thông tin sản phẩm:</label>
              <div class="formRight"> <span class="oneTwo">
                <textarea name="txtDetail" id="param_sale" rows="4" cols="" placeholder="Please Enter Keyword" class="editor"></textarea>
                </span> 
              </div>
              <div class="clear"></div>
            </div>
            <div class="formRow">
              <label class="formLeft ntitle" for="param_sale">Từ khóa:</label>
              <div class="formRight"> <span class="oneTwo">
                <textarea name="txtKeyword" id="param_sale" rows="4" cols="" placeholder="Please Enter Description" ></textarea>
                </span> <span name="sale_autocheck" class="autocheck"></span>
              </div>
              <div class="clear"></div>
            </div>

             <div class="formRow">
              <label class="formLeft ntitle" for="param_sale">Mô tả:</label>
              <div class="formRight"> <span class="oneTwo">
                <textarea name="txtDescription" id="param_sale" rows="4" cols="" placeholder="Please Enter Description"></textarea>
                </span> <span name="sale_autocheck" class="autocheck"></span>
              </div>
              <div class="clear"></div>
            </div>
            <div class="formRow">
              <label class="formLeft ntitle" for="param_name">Thứ tự:</label>
              <div class="formRight"> <span class="oneTwo">
                <input name="txtSort" id="param_name" _autocheck="true" type="text" placeholder="Please Enter Sort Order" />
                </span> <span name="name_autocheck" class="autocheck"></span>
              </div>
              <div class="clear"></div>
            </div>
            <div class="formRow hide"></div>
          </div>
          <div id='tab2' class="tab_content pd0" >
            @for($i = 1 ; $i <= 10 ; $i++)
            <div class="formRow">
              <label class="formLeft ntitle">Ảnh kèm theo {!! $i !!}:</label>
              <div class="formRight">
                <div class="left">
                  <input type="file"  id="image_list" name="fProductDetail[]" multiple>
                </div>
                <div name="image_list_error" class="clear error"></div>
              </div>
              <div class="clear"></div>
            </div>
            @endfor
            <div class="formRow hide"></div>
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

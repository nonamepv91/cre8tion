@extends('admin.master')
@section('content')
  <!-- Title area -->
  @include('admin.bill.header')
  <!-- Message -->
  <!-- Main content wrapper -->
 <div class="wrapper">
    <!-- Form -->
    <form class="form" id="form" action="{{route('order.postedit', $order->id)}}" method="post" name="frmEditProduct" enctype="multipart/form-data">
      <input type="hidden" name="_token" value="{!! csrf_token() !!}">
      <fieldset>
      <div class="widget">
        <div class="title btitle"> <img src="admin_assets/images/icons/dark/add.png" class="titleIcon" />
          <h6>Cập nhật đơn hàng</h6>
        </div>
        <ul class="tabs">
          <li><a href="#tab1">Thông tin chung</a></li>
        </ul>
        <div class="tab_container">
          <div id='tab1' class="tab_content pd0">
            
           
             <div class="formRow">
              <label class="formLeft ntitle" for="param_cat">Tình trang đơn hàng:</label>
              <div class="formRight">
                <select name="txtStatus" id='param_cat' class="left">
                 
                  <!-- kiem tra danh muc co danh muc con hay khong -->
                  @foreach($status as $item)
                    <option @if ($item->code == $order->status) {{"selected"}}@endif value="{{$item->code}}"> {{$item->status}} </option>
                  @endforeach
                </select>
              </div>
              <div class="clear"></div>
            </div>
           
           
            
           
          
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

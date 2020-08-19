@extends('admin.master')
@section('content')
  <!-- Title area -->
  @include('admin.bill.header')
  <!-- Message -->
  <!-- Main content wrapper -->
 <div class="wrapper">
    <!-- Form -->
    <form class="form" id="form" action="{{route('customer.postedit', $customer->id)}}" method="post" name="frmEditProduct" enctype="multipart/form-data">
      <input type="hidden" name="_token" value="{!! csrf_token() !!}">
      <fieldset>
      <div class="widget">
        <div class="title btitle"> <img src="admin_assets/images/icons/dark/edit.png" class="titleIcon" />
          <h6>Sửa</h6>
        </div>
        <ul class="tabs">
          <li><a>Thông tin chung</a></li>
        </ul>
        <div class="tab_container">
          <div id='tab1' class="tab_content pd0">
            <div class="formRow">
              <label class="formLeft ntitle" for="param_name">Tên:</label>
              <div class="formRight"> <span class="oneTwo">
                <input name="txtName" type="text" value="{!! old('txtName'), isset($customer) ? $customer->name : null !!}" readonly="" />
                </span> 
              </div>
              <div class="clear"></div>
            </div>
            <div class="formRow">
              <label class="formLeft ntitle" for="param_name">Email:</label>
              <div class="formRight"> <span class="oneTwo">
                <input name="txtEmail" type="text" value="{!! old('txtEmail'), isset($customer) ? $customer->email : null !!}"  readonly="" />
                </span>
              </div>
              <div class="clear"></div>
            </div>
              <div class="formRow">
              <label class="formLeft ntitle" for="param_name">Điên thoại:</label>
              <div class="formRight"> <span class="oneTwo">
                <input name="txtPhone" type="text" value="{!! old('txtPhone'), isset($customer) ? $customer->phone : null !!}" />
                </span>
              </div>
              <div class="clear"></div>
            </div>
             <div class="formRow">
              <label class="formLeft ntitle" for="param_name">Địa chỉ:</label>
              <div class="formRight"> <span class="oneTwo">
                <input name="txtAddress" type="text" value="{!! old('txtAddress'), isset($customer) ? $customer->address : null !!}" />
                </span>
              </div>
              <div class="clear"></div>
            </div>
             <div class="formRow">
              <label class="formLeft ntitle" for="param_sale">Ghi chú:</label>
              <div class="formRight"> <span class="oneTwo">
                <textarea name="txtNote" rows="4" id="param_sale1">{!! old('txtNote'), isset($customer) ? $customer->note : null !!}</textarea>
                </span>
              </div>
              <div class="clear"></div>
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

@if(Cart::count() != 0)
@extends('user.master')
@section('content')
<div class="columns-container">
    <div class="container" id="columns">
        <!-- breadcrumb -->
        <div class="breadcrumb clearfix" style="font-size: 11px; font-weight: bold; color: black">
            <a class="home" href="#" title="Return to Home">Home</a>
            <span class="navigation-pipe">&nbsp;</span>
            <span class="navigation_page">Checkout</span>
        </div>
        <!-- ./breadcrumb -->
        <!-- page heading-->
         @if(count($errors)>0)
                        <div class="alert alert-danger">
                            @foreach($errors->all() as $err)
                            <div style="font-size: 14px;">{{$err}}</div>
                            @endforeach
                        </div>
                    @endif
        <h2 class="page-heading">
        	
            <span>Thanh Toán</span>
        </h2>
        <!-- ../page heading-->
         <form action="{{route('checkout')}}" method="post" class="beta-form-checkout">
			<input type="hidden" name="_token" value="{{csrf_token()}}">
	        <div class="page-content checkout-page">
	            <h3 class="checkout-sep">Thông tin thanh toán</h3>
	            <div class="box-border">
	                <ul>
	                    <li class="row">
	                        <div class="col-sm-12">
	                            <label class="">Họ tên <abbr class="required" title="bắt buộc">*</abbr></label>
	                            <input class="form-control" type="text" name="name" style="border: 1px solid #d6d6d6">
	                        </div><!--/ [col] -->
	                    </li><!--/ .row -->
	                    <li class="row">	                        
	                        <div class="col-sm-6">	                            
	                            <label>Số điện thoại <abbr class="required" title="bắt buộc">*</abbr></label>
	                            <input class="input form-control" type="text" name="phone" id="company_name_1" style="border: 1px solid #d6d6d6">
	                        </div><!--/ [col] -->
	                        <div class="col-sm-6">	                            
	                            <label>Email <abbr class="required" title="bắt buộc">*</abbr></label>
	                            <input class="input form-control" type="text" name="email" id="email_address_1" style="border: 1px solid #d6d6d6">
	                        </div><!--/ [col] -->
	                    </li><!--/ .row -->
	                    <li class="row">
	                        <div class="col-xs-12">
	                            <label>Địa chỉ <abbr class="required" title="bắt buộc">*</abbr></label>
	                            <input class="input form-control" type="text" name="address" id="address_1" style="border: 1px solid #d6d6d6">
	                        </div><!--/ [col] -->
	                    </li><!--/ .row -->
	                     <li class="row">
	                        <div class="col-xs-12">
	                         <label style="width: 100%">Ghi chú</label>
							<textarea id="notes" name="note" style="width: 100%; border: 1px solid #d6d6d6; height: 80px" placeholder=" Ghi chú về đơn hàng của bạn, ví dụ: Ghi chú đặc biệt để giao hàng."></textarea>
	                        </div><!--/ [col] -->
	                    </li><!--/ .row -->
	                </ul>
	            </div>
	            <h3 class="checkout-sep">Hình thức thanh toán</h3>
	            <div class="box-border">
	                <ul>
	                    <li style="margin-bottom: 20px;">
	                        <input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="COD" checked="checked" data-order_button_text="">
	                        <label for="payment_method_bacs">Thanh toán khi nhận hàng </label>
	                        <div class="payment_box payment_method_bacs" style="margin-left: 30px">
								Cửa hàng sẽ gửi hàng đến địa chỉ của bạn, bạn xem hàng rồi thanh toán tiền cho nhân viên giao hàng
							</div>	
	                    </li>

	                    <li style="margin-bottom: 20px;">
	                    	 <input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="ATM" data-order_button_text="">
	                        <label for="payment_method_bacs">Chuyển khoản </label>
	                    	<div class="payment_box payment_method_cheque" style="margin-left: 30px;">
								Chuyển tiền đến tài khoản sau:
								<br>- Số tài khoản: 0071001165726
								<br>- Chủ TK: Phạm Thanh Hải
								<br>- Ngân hàng Vietcombank TP HCM
							</div>	
	                    </li>
	                </ul>
	            </div>
	            <h3 class="checkout-sep">Đơn hàng của bạn</h3>
	            <div class="box-border">
	               <table class="table table-bordered table-responsive cart_summary">
	                    <thead>
	                        <tr>
	                            <th class="cart_product">Hình</th>
	                            <th>Tên sản phẩm</th>
	                            <th>Đơn giá</th>
	                            <th>Số lượng</th>
	                            <th>Thành tiền</th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                    	
							@foreach(Cart::content() as $cart)
                        <tr>
                            <td class="cart_product">
                                <a href="#"><img src="uploads/product/{{ $cart->options->img}}" alt="Product"></a>
                            </td>
                            <td class="cart_description">
                                <p class="product-name"><a href="#">{{ $cart->name }} </a></p>
                                <small class="cart_ref">Item: {{ $cart->options->item_code }}</small><br>
                            </td>
                            <td class="price"><span>{{ number_format(($cart->price),0,",",".") }} VNĐ</td>
                            <td class="qty">
                                <input class="form-control input-sm qtycart" type="text" value="{{ $cart->qty }}" readonly="">
                            </td>
                            <td class="price">
                                <span>{!! number_format(($cart->price)*($cart->qty),0,",",".") !!} VNĐ</span>
                            </td>
                           
                        </tr>
                        @endforeach
	                        
	                    </tbody>
	                    <tfoot>
	                        <tr>
	                            <td colspan="2" rowspan="2"></td>
	                        </tr>
	                        <tr>
	                            <td colspan="2"><strong>Tổng tiền</strong></td>
	                            <td colspan="2"><strong>{{ Cart::subtotal('0',',','.') }} VNĐ</strong></td>
	                        </tr>
	                    </tfoot>    
	                </table>
	                <button class="button pull-right">Đặt hàng</button>
	            </div>
        	</div>
    	</form>
    </div>
</div>
@endsection
@else	
	<script>
		window.location.href="http://localhost/Laravel/cre8tion/public"; 
	</script>
@endif
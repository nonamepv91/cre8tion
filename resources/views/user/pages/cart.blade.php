@extends('user.master')
@section('content')

<div class="columns-container">
    <div class="container" id="columns">
        <!-- breadcrumb -->
        <div class="breadcrumb clearfix" style="font-size: 11px; font-weight: bold; color: black">
            <a class="home" href="#" title="Return to Home">Trang chủ</a>
            <span class="navigation-pipe">&nbsp;</span>
            <span class="navigation_page">Giỏ hàng</span>
        </div>
        <!-- ./breadcrumb -->
        <!-- page heading-->
        <h2 class="page-heading no-line">
            <span>Giỏ Hàng</span>
        </h2>
        <!-- ../page heading-->
        @if(Cart::count() > 0)
        <div class="page-content page-order">
           
            <div class="heading-counter warning">Giỏ hàng của ban có: {!! Cart::count() !!}
                <span> sản phẩm</span>
           
            </div>
            <div class="order-detail-content">
                
                <table class="table table-bordered table-responsive cart_summary">
                    <thead>
                        <tr>
                            <th class="cart_product">Sản phẩm</th>
                            <th>Mô tả</th>
                            <th>Giá</th>
                            <th>Số lượng</th>
                            <th>Tổng</th>
                            <th  class="action">Xoá - Cập nhật</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<form method="POST" action="">
                            <input type="hidden" name="_token" value="{!! csrf_token() !!}">
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
                                <input class="form-control input-sm qtycart" type="text" value="{{ $cart->qty }}">
                            </td>
                            <td class="price">
                                <span>{!! number_format(($cart->price)*($cart->qty),0,",",".") !!} VNĐ</span>
                            </td>
                            <td class="action">
                                <a class="delete" href="{!! url('delcart',['id'=>$cart->rowId])!!}">Delete item</a>
                                &nbsp &nbsp
                                <a class="update" id="{!! $cart->rowId !!}">Update item</a>
                            </td>
                        </tr>
                        @endforeach
					   </form>
                        
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="2" rowspan="2"></td>
                        </tr>
                        <tr>
                            
                            <td colspan="3"><strong>Tổng tiền</strong></td>
                            <td colspan="2"><span> {{ Cart::subtotal('0',',','.') }} VNĐ</span></td>
                            
                        </tr>
                    </tfoot>    
                </table>
               
                <div class="cart_navigation">
                    <a class="prev-btn" href="#">Tiếp tục mua hàng</a>
                    <a class="next-btn" href="{{ route('checkout')}}">Thanh toán</a>
                </div>
               
            </div>
        </div>
        @else
        <div><span>Chưa có sản phẩm trong giỏ hàng của bạn</span></div>
        @endif
    </div>
</div>

@endsection
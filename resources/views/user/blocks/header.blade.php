<!-- HEADER -->

<div id="header" class="header">
  <div class="top-header">
    <div class="container">
     <!-- <div class="language ">
        <div> 
          <a  href="#"> 
            <img alt="email" src="assets/images/vn.gif" width="20px" /></a>
          <a href="#"> 
            <img alt="email" src="assets/images/en.gif" width="20px" /></a>
        </div>
      </div>-->
      <div class="top-bar-social"> 
        <a href="#"><i class="fa fa-facebook"></i></a> 
        <a href="https://www.youtube.com/watch?v=dkSmGVhjAmI&list=UUkfqN3JoHkErKf1nC9SFzAA" target="_blank"><i class="fa fa-youtube"></i></a> 
        <a href="https://www.pinterest.com/cretionvn/pins/" target="_blank"><i class="fa fa-pinterest"></i></a> 
        <a href="#"><i class="fa fa-google-plus"></i></a> 
      </div>
      <div class="support-link"><a href=""></a><a href="{{route('about')}}">Giới thiệu</a> <a href="{{route('contact')}}">Liên hệ</a> </div>
     <!-- <div id="user-info-top" class="user-info pull-right">
        <div class="dropdown"> <a class="current-open" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#"><span>Tài khoản</span></a>
          <ul class="dropdown-menu mega_dropdown" role="menu">
            <li><a href="#" data-toggle="modal" data-target=".login-register-form">Đăng nhập</a></li>
            <li><a href="#">Đăng ký</a></li>
          </ul>
        </div>
      </div> -->
    </div>
  </div>
  @include('user.pages.login')
  <!--/.top-header -->
  <!-- MAIN HEADER -->
  <div class="container main-header">
    <div class="row">
      <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 logo"> <a href="#"><img alt="Kute Shop" src="assets/images/logoc8.png" /></a> </div>
      <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 header-search-box">
        <form class="form-inline" action="{{route('search')}}" method="post">
          <input type="hidden" name="_token" value="{{csrf_token()}}">
          <div class="form-group input-serach">
            <input type="text" name="keyword"  placeholder="Nhập từ khóa...">
          </div>
          <button type="submit" class="pull-right btn-search"><i class="fa fa-search"></i></button>
        </form>
      </div>
      <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 group-button-header">
       
        <div class="btn-cart" id="cart-block">
          @if(Cart::count())
            <div class="mycart">
               <a href="{{ route('cart') }}">
                <small class="cart1">Giỏ hàng</small>
                 <img src="assets/images/icon_cart.png" alt="" style="line-height: 39px"> 
               </a>
                <small class="qty">@if(Cart::count() > 0){!! Cart::count() !!} sản phẩm @else 0 sản phẩm @endif</small>
              
            </div>       
            <div class="cart-block">
              <div class="cart-block-content"> @if(Cart::count() > 0)
                <h5 class="cart-title">{!! Cart::count() !!} Sản phẩm</h5>
                <div class="toal-cart"> <span>Tổng tiền:</span> <span class="toal-price pull-right">{{ Cart::subtotal('0',',','.') }} VNĐ</span> </span> </div>
                <div class="cart-buttons"> <a href="{{ route('checkout') }}" class="btn-check-out">Thanh toán</a> </div>
                @else <span class="total">Chưa có sản phẩm</span> @endif </div>
            </div>
          @else
          <div class="mycart">
               <a>
                <small class="cart1">Giỏ hàng</small>
                 <img src="assets/images/icon_cart.png" alt="" style="margin-right: 12px;"> 
               </a>              
            </div>   
          @endif
        </div>
       
        

      </div>
    </div>
  </div>
  <!-- END MANIN HEADER -->
  <div id="nav-top-menu" class="nav-top-menu">
    <div class="container">
      <div class="row">
        <div class="col-sm-3" id="box-vertical-megamenus">
          <div class="box-vertical-megamenus">
            <h4 class="title"> <span class="btn-open-mobile"><i class="fa fa-bars"></i></span> </h4>
           <!-- <div class="vertical-menu-content is-home">
              <ul class="vertical-menu-list">
                @foreach($category as $item)
                @if(count($item->product_type) > 0)
                <li> <a class="parent" href="category2.html"><img class="icon-menu" alt="Funky roots" src="assets/data/menuicon.png">{{$item->name}}</a>
                  <div class="vertical-dropdown-menu">
                    <div class="vertical-groups col-sm-12">
                      <div class="mega-group col-sm-4">
                        <h4 class="mega-group-header"><span>{{$item->name}}</span></h4>
                        <ul class="group-link-default">
                          @foreach($item->product_type as $subitem)
                          @if(count($subitem->product) > 0 && $subitem->status == 1)
                          <li><a href="{{$subitem->id}}-{{$item->slug}}/{{$subitem->alias}}.html">{{$subitem->name}}</a></li>
                          @endif
                          @endforeach
                        </ul>
                      </div>
                      <div class="mega-custom-html col-sm-12"> <a href="#"><img src="assets/data/banner-megamenu.jpg" alt="Banner"></a> </div>
                    </div>
                  </div>
                </li>
                @endif
                @endforeach
              </ul>
              <div class="all-category"><span class="open-cate">All Categories</span></div>
            </div>-->
          </div>
        </div>
        <div id="main-menu" class="col-sm-9 main-menu">
          <nav class="navbar navbar-default">
            <div class="container-fluid">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <i class="fa fa-bars"></i> </button>
                <a class="navbar-brand" href="#">MENU</a> </div>
              <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                  <li><a href="#">Trang chủ</a></li>
                  @foreach($category as $item)
                  @if(count($item->product_type) > 0)
                  <li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" href="#">{{$item->name}}</a>
                    <ul class="dropdown-menu container-fluid">
                      <li class="block-container">
                        <ul class="block">
                          @foreach($item->product_type as $subitem)
                          @if(count($subitem->product) > 0 && $subitem->status == 1)
                          <li class="link_container"><a href="{{$subitem->id}}-{{$item->slug}}/{{$subitem->alias}}.html">{{$subitem->name}}</a></li>
                          @endif
                          @endforeach
                        </ul>
                      </li>
                    </ul>
                  </li>
                  @endif
                  @endforeach
                  <li><a href="{{route('promotion')}}">Khuyến mãi</a></li>
                </ul>
              </div>
              <!--/.nav-collapse -->
            </div>
          </nav>
        </div>
      </div>
      <!-- userinfo on top-->
      <div id="form-search-opntop"> </div>
      <!-- userinfo on top-->
      <div id="user-info-opntop"> </div>
      <!-- CART ICON ON MMENU -->
      <div id="shopping-cart-box-ontop"> <i class="fa fa-shopping-cart"></i>
        <div class="shopping-cart-box-ontop-content"></div>
      </div>
    </div>
  </div>
</div>
<!-- end header -->

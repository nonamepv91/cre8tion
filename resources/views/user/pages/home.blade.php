@extends('user.master')
@section('title','sản phẩm nails|sơn gel|đèn led nail - cre8tion.vn')
@section('content')
<style>
    .nav li:first-child{
        color: red;
    }
</style>
<!-- Home slideder-->
<div id="home-slider">
  <div class="container">
    <div class="row">
      <div class="col-sm-12 header-top-right">
        <div class="homeslider">
          <ul id="contenhomeslider">
            @foreach($slide as $item)
            <li><img alt="Funky roots" src="uploads/slide/{{$item->image_link}}" title="" /></li>
            @endforeach
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- END Home slideder-->
<div class="page-top">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 col-sm-12">
        <h2 class="page-heading"> <span class="page-heading-title">Sản phẩm mới</span> </h2>
        <div class="latest-deals-product">
          <ul class="product-list owl-carousel" data-dots="false" data-loop="true" data-nav = "true" data-margin = "10" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-responsive='{"0":{"items":1},"600":{"items":3},"1000":{"items":5}}'>
            @foreach($newproduct as $item)
            <li>
              <div class="left-block"> <a href="{{$item->id}}/{{$item->alias}}.html"><img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" /></a>
                <div class="add-to-cart"> <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a> </div>
              </div>
              <div class="right-block">
                <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                <div class="content_price"> <span class="price product-price">{{number_format($item->price)}} VNĐ</span> </div>
              </div>
            </li>
            @endforeach
          </ul>
        </div>
      </div>
    </div>
    <!-- Baner bottom -->
    <div class="row">
      <div class="col-sm-6"> <a href="#"><img alt="ads" class="img-responsive" src="uploads/banner/b01.jpg" /></a> </div>
      <div class="col-sm-6"> <a href="#"><img alt="ads" class="img-responsive" src="uploads/banner/b01.jpg" /></a> </div>
    </div>
    <!-- end banner bottom -->
  </div>
</div>
<!---->
<div class="content-page">
  <div class="container">
    <!-- featured category furniture -->
    <div class="category-featured furniture">
      <nav class="navbar nav-menu show-brand">
        <div class="container">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-brand"><a href="#"><img alt="fashion" src="assets/data/icon-furniture.png" />soaf of gel</a></div>
          <span class="toggle-menu"></span>
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav test1">
              @foreach($tab1 as $item)
              <li><a data-toggle="tab" href="#tab-{{$item->id}}">{{$item->name}}</a></li>
              @endforeach
            </ul>
          </div>
          <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
      </nav>
      <div class="product-featured clearfix">
        <div class="row">
          <div class="col-sm-12 col-right-tab">
            <div class="product-featured-tab-content">
              <div class="tab-container">
                <!-- Start TAB-->
                <div class="tab-panel" id="tab-21">
                  <div class="box-right1">
                    <ul class="product-list row">
                      @foreach($gel1 as $item)
                      <li class="col-sm-2">
                        <div class="left-block"> <a href="{{$item->id}}/{{$item->alias}}.html"> <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" /></a>
                          <div class="add-to-cart"> <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a> </div>
                        </div>
                        <div class="right-block">
                          <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                          <div class="content_price"> <span class="price product-price">{{number_format($item->price)}} VNĐ</span> </div>
                        </div>
                      </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
                <!-- End TAB -->
                <!-- Start TAB-->
                <div class="tab-panel" id="tab-16">
                  <div class="box-right1">
                    <ul class="product-list row">
                      @foreach($gel2 as $item)
                      <li class="col-sm-2">
                        <div class="left-block"> <a href="{{$item->id}}/{{$item->alias}}.html"> <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" /></a>
                          <div class="add-to-cart"> <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a> </div>
                        </div>
                        <div class="right-block">
                          <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                          <div class="content_price"> <span class="price product-price">{{number_format($item->price)}} VNĐ</span> </div>
                        </div>
                      </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
                <!-- End TAB -->
                <!-- Start TAB-->
                <div class="tab-panel" id="tab-23">
                  <div class="box-right1">
                    <ul class="product-list row">
                      @foreach($gel3 as $item)
                      <li class="col-sm-2">
                        <div class="left-block"> <a href="{{$item->id}}/{{$item->alias}}.html"> <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" /></a>
                          <div class="add-to-cart"> <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a> </div>
                        </div>
                        <div class="right-block">
                          <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                          <div class="content_price"> <span class="price product-price">{{number_format($item->price)}} VNĐ</span> </div>
                        </div>
                      </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
                <!-- End TAB -->
                <!-- Start TAB-->
                <div class="tab-panel active" id="tab-35">
                  <div class="box-right1">
                    <ul class="product-list row">
                      @foreach($gel4 as $item)
                      <li class="col-sm-2">
                        <div class="left-block"> <a href="{{$item->id}}/{{$item->alias}}.html"> <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" /></a>
                          <div class="add-to-cart"> <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a> </div>
                        </div>
                        <div class="right-block">
                          <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                          <div class="content_price"> <span class="price product-price">{{number_format($item->price)}} VNĐ</span> </div>
                        </div>
                      </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
                <!-- End TAB -->
                <!-- Start TAB-->
                <div class="tab-panel" id="tab-36">
                  <div class="box-right1">
                    <ul class="product-list row">
                      @foreach($gel5 as $item)
                      <li class="col-sm-2">
                        <div class="left-block"> <a href="{{$item->id}}/{{$item->alias}}.html"> <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" /></a>
                          <div class="add-to-cart"> <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a> </div>
                        </div>
                        <div class="right-block">
                          <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                          <div class="content_price"> <span class="price product-price">{{number_format($item->price)}} VNĐ</span> </div>
                        </div>
                      </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
                <!-- End TAB -->
                <!-- Start TAB-->
                <div class="tab-panel" id="tab-15">
                  <div class="box-right1">
                    <ul class="product-list row">
                      @foreach($gel6 as $item)
                      <li class="col-sm-2">
                        <div class="left-block"> <a href="{{$item->id}}/{{$item->alias}}.html"> <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" /></a>
                          <div class="add-to-cart"> <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a> </div>
                        </div>
                        <div class="right-block">
                          <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                          <div class="content_price"> <span class="price product-price">{{number_format($item->price)}} VNĐ</span> </div>
                        </div>
                      </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
                <!-- End TAB -->
                <!-- Start TAB-->
                <div class="tab-panel" id="tab-28">
                  <div class="box-right1">
                    <ul class="product-list row">
                      @foreach($gel7 as $item)
                      <li class="col-sm-2">
                        <div class="left-block"> <a href="{{$item->id}}/{{$item->alias}}.html"> <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" /></a>
                          <div class="add-to-cart"> <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a> </div>
                        </div>
                        <div class="right-block">
                          <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                          <div class="content_price"> <span class="price product-price">{{number_format($item->price)}} VNĐ</span> </div>
                        </div>
                      </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
                <!-- End TAB -->
                <!-- Start TAB-->
                <div class="tab-panel" id="tab-20">
                  <div class="box-right1">
                    <ul class="product-list row">
                      @foreach($gel8 as $item)
                      <li class="col-sm-2">
                        <div class="left-block"> <a href="{{$item->id}}/{{$item->alias}}.html"> <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" /></a>
                          <div class="add-to-cart"> <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a> </div>
                        </div>
                        <div class="right-block">
                          <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                          <div class="content_price"> <span class="price product-price">{{number_format($item->price)}} VNĐ</span> </div>
                        </div>
                      </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
                <!-- End TAB -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end featured category furniture-->
    <div class="container">
      <div style="background: #fff;">
        <div class="row">
          <div class="col-sm-4"><img src="uploads/banner/cat eye gel.jpg" alt="" style="border: 1px solid #729070"></div>
          <div class="col-sm-4"><img src="uploads/banner/c8-mood-banner-wb.jpg" alt="" style="border: 1px solid #729070"></div>
          <div class="col-sm-4"><img src="uploads/banner/DIP-POWDER-square-banner.jpg" alt="" style="border: 1px solid #729070"></div>
        </div>
      </div>
    </div>
    <!-- featured category furniture -->
    <div class="category-featured furniture">
      <nav class="navbar nav-menu show-brand">
        <div class="container">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-brand"><a href="#"><img alt="fashion" src="assets/data/icon-furniture.png" />dip power</a></div>
          <span class="toggle-menu"></span>
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav test">
              @foreach($tab2 as $item)
              <li><a data-toggle="tab" href="#tab-{{$item->id}}">{{$item->name}}</a></li>
              @endforeach
            </ul>
          </div>
          <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
      </nav>
      <div class="product-featured clearfix">
        <div class="row">
          <div class="col-sm-12 col-right-tab">
            <div class="product-featured-tab-content">
              <div class="tab-container">
                <div class="tab-panel active" id="tab-32">
                  <div class="box-right1">
                    <ul class="product-list row">
                      @foreach($dip1 as $item)
                      <li class="col-sm-2">
                        <div class="left-block"> <a href="{{$item->id}}/{{$item->alias}}.html"> <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" /></a>
                          <div class="add-to-cart"> <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a> </div>
                        </div>
                        <div class="right-block">
                          <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                          <div class="content_price"> <span class="price product-price">{{number_format($item->price)}} VNĐ</span> </div>
                        </div>
                      </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
                <div class="tab-panel" id="tab-29">
                  <div class="box-right1">
                    <ul class="product-list row">
                      @foreach($dip2 as $item)
                      <li class="col-sm-2">
                        <div class="left-block"> <a href="{{$item->id}}/{{$item->alias}}.html"> <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" /></a>
                          <div class="add-to-cart"> <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a> </div>
                        </div>
                        <div class="right-block">
                          <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                          <div class="content_price"> <span class="price product-price">{{number_format($item->price)}} VNĐ</span> </div>
                        </div>
                      </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
                <div class="tab-panel" id="tab-40">
                  <div class="box-right1">
                    <ul class="product-list row">
                      @foreach($dip3 as $item)
                      <li class="col-sm-2">
                        <div class="left-block"> <a href="{{$item->id}}/{{$item->alias}}.html"> <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" /></a>
                          <div class="add-to-cart"> <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a> </div>
                        </div>
                        <div class="right-block">
                          <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                          <div class="content_price"> <span class="price product-price">{{number_format($item->price)}} VNĐ</span> </div>
                        </div>
                      </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
                <div class="tab-panel" id="tab-41">
                  <div class="box-right1">
                    <ul class="product-list row">
                      @foreach($dip4 as $item)
                      <li class="col-sm-2">
                        <div class="left-block"> <a href="{{$item->id}}/{{$item->alias}}.html"> <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" /></a>
                          <div class="add-to-cart"> <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a> </div>
                        </div>
                        <div class="right-block">
                          <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                          <div class="content_price"> <span class="price product-price">{{number_format($item->price)}} VNĐ</span> </div>
                        </div>
                      </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
                <div class="tab-panel" id="tab-63">
                  <div class="box-right1">
                    <ul class="product-list row">
                      @foreach($dip5 as $item)
                      <li class="col-sm-2">
                        <div class="left-block"> <a href="{{$item->id}}/{{$item->alias}}.html"> <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" /></a>
                          <div class="add-to-cart"> <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a> </div>
                        </div>
                        <div class="right-block">
                          <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                          <div class="content_price"> <span class="price product-price">{{number_format($item->price)}} VNĐ</span> </div>
                        </div>
                      </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end featured category furniture-->
    <div class="container">
      <div class="row">
        <div class="col-sm-12"> <img src="uploads/banner/flyer04.jpg" alt=""> </div>
      </div>
    </div>
    <!-- featured category furniture -->
    <div class="category-featured furniture">
      <nav class="navbar nav-menu show-brand">
        <div class="container">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-brand"><a href="#"><img alt="fashion" src="assets/data/icon-furniture.png" />nail machines</a></div>
          <span class="toggle-menu"></span>
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse"> </div>
          <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
      </nav>
      <div class="product-featured clearfix">
        <div class="row">
          <div class="col-sm-12 col-right-tab">
            <div class="product-featured-tab-content">
              <div class="tab-container">
                <div class="tab-panel active" id="tab-12">
                  <div class="box-right1">
                    <ul class="product-list row">
                      @foreach($led as $item)
                      <li class="col-sm-2">
                        <div class="left-block"> <a href="{{$item->id}}/{{$item->alias}}.html"> <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" /></a>
                          <div class="add-to-cart"> <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a> </div>
                        </div>
                        <div class="right-block">
                          <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                          <div class="content_price"> <span class="price product-price">{{number_format($item->price)}} VNĐ</span> </div>
                        </div>
                      </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end featured category furniture-->
  </div>
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  <script>
$( ".test li" ).first().addClass( "active" );
$( ".test1 li" ).first().addClass( "active" );
</script>
</div>

@endsection 
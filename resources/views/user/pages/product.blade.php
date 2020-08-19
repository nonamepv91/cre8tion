@extends('user.master')
@section('title','sản phẩm nails|sơn gel|đèn led nail - cre8tion.vn')
@section('content')
<div class="columns-container">
    <div class="container" id="columns">
        <!-- breadcrumb -->
        <div class="breadcrumb clearfix" style="font-size: 11px; font-weight: bold; color: black">
            <a class="home" href="#" title="Return to Home">Home</a>
            <span class="navigation-pipe"><span class="navigation-pipe"></span></span>

            <a href="#" title="Return to Home">{{$product_type->category->name}}</a>
            <span class="navigation-pipe"><span class="navigation-pipe"></span></span>
            <a href="#" title="Return to Home">{{$product_type->name}}</a>
        </div>
        <!-- ./breadcrumb -->
        <!-- row -->
        <div class="row">
            <!-- Left colunm -->
            <div class="column col-xs-12 col-sm-3" id="left_column">

                <!-- left silide -->
                <div class="col-left-slide left-module">
                    <ul class="owl-carousel owl-style2" data-loop="true" data-nav = "false" data-margin = "30" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-items="1" data-autoplay="true">
                        <li><a href="#"><img src="uploads/banner/nails1.jpg" alt="slide-left"></a></li>
                        <li><a href="#"><img src="uploads/banner/nails2.jpg" alt="slide-left"></a></li>
                        <li><a href="#"><img src="uploads/banner/nails3.jpg" alt="slide-left"></a></li>

                    </ul>

                </div>
                <!--./left silde-->
                <!-- block category -->
                <div class="block left-module">
                    <p class="title_block">{{$product_type->category->name}}</p>
                    <div class="block_content left-menu" style="padding: 0px; margin-top: 3px">
                        <!-- layered -->
                        <div class="layered layered-category">
                            <div class="layered-content">
                                <ul class="tree-menu">
                                    @foreach($cat as $item)
                                        @if(count($item->product) > 0)
                                            <li><span></span><a href="{{$item->id}}-{{$product_type->category->slug}}/{{$item->alias}}.html">{{$item->name}}</a></li>
                                        @endif
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                        <!-- ./layered -->
                    </div>
                </div>
                <!-- ./block category  -->
            </div>
            <!-- ./left colunm -->
            <!-- Center colunm-->
            <div class="center_column col-xs-12 col-sm-9" id="center_column">
                <!-- category-slider -->
                <div class="category-slider">
                    <ul class="owl-carousel owl-style2" data-dots="false" data-loop="true" data-nav = "true" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-items="1">
                        <li>
                            <img src="uploads/banner/cre8tion_bits.png">
                        </li>
                        <li>
                            <img src="uploads/banner/WebBanner.jpg" alt="category-slider">
                        </li>
                    </ul>
                </div>
                <!-- ./category-slider -->
                
                <!-- view-product-list-->
                <div id="view-product-list" class="view-product-list">
                    <h2 class="page-heading">
                        <span class="page-heading-title">{{$product_type->name}}</span>
                    </h2>
                    <!-- PRODUCT LIST -->
                    <ul class="row product-list grid">
                        @foreach($product as $item)    
                        <li class="col-sx-12 col-sm-3">
                            <div class="product-container">
                                <div class="left-block">
                                    <a href="{{$item->id}}/{{$item->alias}}.html">
                                        <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" />
                                    </a>
                                    @if($item->price > 0)
                                    <div class="add-to-cart">
                                        <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a>
                                    </div>
                                    @endif
                                </div>
                                <div class="right-block">
                                    <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                                    @if($item->price > 0)
                                    <div class="content_price">
                                        <span class="price product-price">{{number_format($item->price)}} VNĐ</span>
                                    </div>
                                    @endif
                                </div>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                    <!-- ./PRODUCT LIST -->
                </div>
                <!-- ./view-product-list-->
                <div class="sortPagiBar">
                    <div class="bottom-pagination">
                       {!! $product->links() !!}
                    </div>
                    
                </div>
            </div>
            <!-- ./ Center colunm -->
        </div>
        <!-- ./row-->
    </div>
</div>
<script>
    $(document).ready(function() {
    // get current URL path and assign 'active' class
    var pathname = window.location.pathname;
    alert(pathname);
    $('.tree-menu > li > a[href="'+pathname+'"]').parent().addClass('active');
})
</script>
@endsection 
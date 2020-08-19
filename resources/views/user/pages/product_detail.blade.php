@extends('user.master')
@section('title','sản phẩm nails|sơn gel|đèn led nail - cre8tion.vn')
@section('content')
<div class="columns-container right-sidebar">
    <div class="container" id="columns">
        <!-- breadcrumb -->
        <div class="breadcrumb clearfix" style="font-size: 11px; font-weight: bold; color: black">
            <a class="home" href="#" title="Return to Home">Home</a>
            <span class="navigation-pipe"><span class="navigation-pipe"></span></span>

            <a href="#" title="Return to Home">{{$product_detail->product_type->category->name}}</a>
            <span class="navigation-pipe"><span class="navigation-pipe"></span></span>
            <a href="#" title="Return to Home">{{$product_detail->product_type->name}}</a>
            <span class="navigation-pipe"><span class="navigation-pipe"></span></span>
            <span class="navigation_page">{{$product_detail->name}}</span>
        </div>
        <!-- ./breadcrumb -->
        <!-- row -->
        <div class="row">
            <!-- Left colunm -->
            <div class="column col-xs-12 col-sm-3" id="left_column">
                 <!-- block best sellers -->
                <div class="block left-module">
                    <p class="title_block">sản phẩm khác</p>
                    <div class="block_content product-onsale">
                        <ul class="product-list owl-carousel" data-loop="true" data-nav = "false" data-margin = "0" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-items="1" data-autoplay="true">
                           @foreach($proorder as $item)
                           <li>
                                <div class="product-container">
                                    <div class="left-block">
                                        <a href="#">
                                            <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" />
                                        </a>
                                    </div>
                                    <div class="right-block">
                                        <h5 class="product-name"><a href="#">{{$item->name}}</a></h5>
                                        
                                        <div class="content_price">
                                            <span class="price product-price">{{number_format($item->price)}} VNĐ</span>
                                        </div>
                                    </div>
                                    <div class="product-bottom">
                                        <a class="btn-add-cart" title="Add to Cart" href="#add">Mua hàng</a>
                                    </div>
                                </div>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <!-- ./block best sellers  -->
                <!-- block best sellers -->
                <div class="block left-module">
                    <p class="title_block">sản phẩm mới</p>
                    <div class="block_content">
                        <ul class="products-block best-sell">
                            @foreach($pronew as $item)
                                <li>
                                    <div class="products-block-left">
                                        <a href="#">
                                            <img src="uploads/product/{{$item->image_link}}" alt="">
                                        </a>
                                    </div>
                                    <div class="products-block-right">
                                        <p class="product-name">
                                            <a href="#">{{$item->name}}</a>
                                        </p>
                                        <p class="product-price">{{number_format($item->price)}} VNĐ</p>
                                    </div>
                                </li>
                             @endforeach  
                            </ul>
                    </div>
                </div>
                <!-- ./block best sellers  -->
            </div>
            <!-- ./left colunm -->
            <!-- Center colunm-->
            <div class="center_column col-xs-12 col-sm-9" id="center_column">
                <!-- Product -->
                    <div id="product">
                        <div class="primary-box row">
                            <div class="pb-left-column col-xs-12 col-sm-6">
                                <!-- product-imge-->
                                <div class="product-image">
                                    <div class="product-full" style="height: 398px">
                                        <img src='uploads/product/{{$product_detail->image_link}}'/>
                                    </div>
                                    <div class="product-img-thumb" id="gallery_01">
                                        <ul class="owl-carousel" data-items="3" data-nav="true" data-dots="false" data-margin="20" data-loop="false">
                                            @foreach($product_detail->product_image as $item)
                                            <li>
                                                <a href="#" data-image="uploads/detail/{{$item->image}}" >
                                                    <img id="product-zoom"  src="uploads/detail/{{$item->image}}" /> 
                                                </a>
                                            </li>
                                           @endforeach
                                        </ul>
                                    </div>
                                </div>
                                <!-- product-imge-->
                            </div>
                            <div class="pb-right-column col-xs-12 col-sm-6">
                                <h1 class="product-name">{{$product_detail->name}}</h1>
                                
                                <div class="product-price-group">
                                    <span class="price">{{number_format($product_detail->price)}} VNĐ</span>
                                </div>
                                <div class="info-orther">
                                    <p>Mã: #{{$product_detail->item_code}}</p>
                                    <p class="info-tt"><i class="fa fa-check-square" aria-hidden="true" style="margin-right: 5px;"></i><span class="in-stock">còn hàng</span></p>
                                </div>
                                <div class="product-desc">
                                    {!! $product_detail->detail !!} 
                                </div>
                                
                                <div class="form-action">
                                    <div class="button-group">
                                        <a class="btn-add-cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a>
                                    </div>
                                    <div class="button-group">
                                       <iframe src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2Fcre8tionvietnam%2F&width=112&layout=button&action=like&size=small&show_faces=true&share=true&height=65&appId" width="112" height="65" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
                                    </div>
                                </div>
                                <div class="form-share">
                                    <div class="sendtofriend-print">
                                        <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.3"></script>
<div class="fb-comments" data-href="https://www.facebook.com/cre8tionvietnam/" data-width="400" data-numposts="5"></div>
                                    </div>
                                    <div class="network-share">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- tab product -->
                        @if(!empty($product_detail->detail))
                        <div class="product-tab">
                            <ul class="nav-tab">
                                <li class="active">
                                    <a aria-expanded="false" data-toggle="tab" href="#product-detail">Mô tả</a>
                                </li>
                                
                            </ul>
                            <div class="tab-container">
                                <div id="product-detail" class="tab-panel active">
                                   {!! $product_detail->detail !!}
                                </div>
                                
                            </div>
                        </div>
                        @endif
                        <!-- ./tab product -->
                        <!-- box product -->
                        <div class="page-product-box">
                            <h3 class="heading">Sản phẩm cùng danh mục</h3>
                            <ul class="product-list owl-carousel" data-dots="false" data-loop="true" data-nav = "true" data-margin = "30" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-autoplay="true" data-responsive='{"0":{"items":1},"600":{"items":3},"1000":{"items":4}}'>
                                @foreach($pro_related as $item)
                                <li>
                                    <div class="product-container">
                                        <div class="left-block">
                                            <a href="{{$item->id}}/{{$item->alias}}.html">
                                                <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" />
                                            </a>
                                           
                                            <div class="add-to-cart">
                                                <a title="Add to Cart" href="#add">Mua hàng</a>
                                            </div>
                                        </div>
                                        <div class="right-block">
                                            <h5 class="product-name"><a href="{{$item->id}}/{{$item->alias}}.html">{{$item->name}}</a></h5>
                                            
                                            <div class="content_price">
                                                <span class="price product-price">{{number_format($item->price)}} VNĐ</span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                               @endforeach
                            </ul>
                        </div>
                        <!-- ./box product -->
                        
                    </div>
                <!-- Product -->
            </div>
            <!-- ./ Center colunm -->
        </div>
        <!-- ./row-->
    </div>
</div>
@endsection 
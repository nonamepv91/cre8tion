 @extends('user.master')
@section('content')
<div class="columns-container">
    <div class="container" id="columns">
        <!-- breadcrumb -->
        <div class="breadcrumb clearfix" style="font-size: 11px; font-weight: bold; color: black">
            <a class="home" href="#" title="Return to Home">Home</a>
            <span class="navigation-pipe"><span class="navigation-pipe"></span></span>
            <a href="#" title="Return to Home">Kết quả tìm kiếm</a>
        </div>
        <!-- ./breadcrumb -->
        <!-- row -->
        <div class="row">
           
            <!-- Center colunm-->
            <div class="center_column col-xs-12 col-sm-12" id="center_column">
                
                <!-- view-product-list-->
                <div id="view-product-list" class="view-product-list">
                    
                    <!-- PRODUCT LIST -->
                    <ul class="row product-list grid">
                    @if(count($product) > 0)
                       @foreach($product as $item)
                       @if($item->price > 0)
                      <li class="col-sx-12 col-sm-2">
                            <div class="product-container">
                                <div class="left-block">
                                    <a href="{{ route('product-detail', $item->id) }}">
                                        <img class="img-responsive" alt="product" src="uploads/product/{{$item->image_link}}" />
                                    </a>
                                   <!-- <div class="add-to-cart">
                                        <a title="Add to Cart" href="{{ route('addcart', $item->id) }}">Mua hàng</a>
                                    </div>-->
                                </div>
                                <div class="right-block">
                                    <h5 class="product-name"><a href="{{ route('product-detail', $item->id) }}">{{$item->name}}</a></h5>
                                    <div class="content_price">
                                        <span class="price product-price">{{number_format($item->price)}} VNĐ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        @endif
                       @endforeach 
                     @else
                     <li class="col-sx-12 col-sm-3">
                            <div class="product-container">
                               
                                <div class="right-block">
                                    <h5>không tìm thấy sản phâm ...</h5>
                                    
                                </div>
                            </div>
                        </li>
                    @endif
                    </ul>
                    <!-- ./PRODUCT LIST -->
                </div>
                <!-- ./view-product-list-->
                <div style="text-align: right;">
                    {!! $product->links() !!}
                    
                   
                </div>
            </div>
            <!-- ./ Center colunm -->
        </div>
        <!-- ./row-->
    </div>
</div>

@endsection 
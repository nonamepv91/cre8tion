 <div id="nav-top-menu" class="nav-top-menu">
    <div class="container">
      <div class="row">
        
        <div id="main-menu" class="col-sm-12 main-menu">
          <nav class="navbar navbar-default">
            <div class="container-fluid">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <i class="fa fa-bars"></i> </button>
                <a class="navbar-brand" href="#">MENU</a> </div>
               
              <div id="navbar" class="navbar-collapse collapse">
               
                <ul class="nav navbar-nav item-menu">

                  <li class="first"><a href="#">Trang chủ</a></li>
                 
                  @foreach($category as $item)
                   @if(count($item->product_type) > 0)
                  <li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" style="cursor: pointer;">{{$item->name}}</a>
                    <ul class="dropdown-menu container-fluid">
                      <li class="block-container">
                        <ul class="block">
                           @foreach($item->product_type as $subitem)
                          @if(count($subitem->product) > 0)
                          <li class="link_container" style="border-bottom: 1px solid #d2caca"><a href="{{$subitem->id}}-{{$item->slug}}/{{$subitem->alias}}.html" style="margin-left: 10px">{{$subitem->name}}</a></li>
                          @endif
                         @endforeach
                        </ul>
                        
                      </li>
                    </ul>
                  </li>
                   @endif
                  @endforeach
                  <li><a href="khuyenmai">Khuyến Mãi</a></li>
                  <li><a href="video">Video</a></li>
                  <li class="call"><img src="assets/images/call_white.png" alt=""><span>028.3515.6082</span></li>
                </ul>               
              </div>
              
              <!--/.nav-collapse -->
            </div>
          </nav>
          
        </div>
      </div>
      <!-- userinfo on top-->
      <!-- userinfo on top-->
      <div id="user-info-opntop"> </div>
      <!-- CART ICON ON MMENU -->
      <div id="shopping-cart-box-ontop"> <i class="fa fa-shopping-cart"></i>
        <div class="shopping-cart-box-ontop-content"></div>
      </div>
    </div>
  </div>
<div id="left_content">
  <div id="leftSide" style="padding-top:30px;">
    <!-- Account panel -->
    <div class="sideProfile"> <a href="{{route('user.getedit',Auth::user()->id)}}" title="" class="profileFace"><img width="40" src="uploads/user/user.png" /></a> <span>Xin chào: <strong>{{Auth::user()->name}}!</strong></span> <span>{{Auth::user()->full_name}}</span>
      <div class="clear"></div>
    </div>
    <div class="sidebarSep"></div>
    <!-- Left navigation -->
    <ul id="menu" class="nav">
      <li class="home"> <a href="admin/home.html" class="active" id="current"> <span>Bảng điều khiển</span> <strong></strong> </a> </li>
      <li class="tran"> <a href="admin/tran.html" class=" exp" > <span>Quản lý bán hàng</span> <strong>2</strong> </a>
        <ul class="sub">
          <li > <a href="{{route('order')}}"> Orders </a> </li>
          <li > <a href="{{route('customer')}}"> Customer </a> </li>
        </ul>
      </li>
      <li class="product"> <a href="admin/product.html" class=" exp" > <span>Sản phẩm</span> <strong>3</strong> </a>
        <ul class="sub">
          <li > <a href="{{route('category')}}"> Category </a> </li>
          <li > <a href="{{route('product-type')}}"> Product Type </a> </li>
          <li > <a href="{{route('product')}}"> Products </a> </li>
        </ul>
      </li>
      <li class="account"> <a href="admin/account.html" class=" exp" > <span>Tài khoản</span> <strong>1</strong> </a>
        <ul class="sub">
          <li > <a href="{{route('user')}}"> Administrator </a> </li>
        </ul>
      </li>
      <li class="support"> <a href="admin/support.html" class=" exp" > <span>Hỗ trợ và liên hệ</span> <strong>2</strong> </a>
        <ul class="sub">
          <li > <a href="admin/support.html"> Hỗ trợ </a> </li>
          <li > <a href="{{route('contact')}}"> Liên hệ </a> </li>
          <li > <a href="{{route('adminabout')}}"> Giới thiệu </a> </li>
        </ul>
      </li>

      <li class="content"> <a href="admin/content.html" class=" exp" > <span>Nội dung</span> <strong>4</strong> </a>
        <ul class="sub">
          <li > <a href="{{route('slide')}}"> Slide </a> </li>
          <li > <a href="{{route('banner')}}"> Banner </a> </li>
          <li > <a href=""> Video </a> </li>
          <li > <a href="{{route('config')}}"> Cài đặt </a> </li>
        </ul>
      </li>
    </ul>
  </div>
  <div class="clear"></div>
</div>
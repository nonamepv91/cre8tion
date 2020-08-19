<!-- Footer -->
<footer id="footer">
     <div class="container">
            <!-- introduce-box -->
            <div id="introduce-box" class="row">
                <div class="col-md-4">
                    <div id="address-box">
                        <a href="#"><img src="assets/images/logoc8.png" alt="logo" /></a>
                        <div id="address-list">
                            <div class="tit-name">Địa chỉ:</div>
                            <div class="tit-contain">{{$config->address}}</div>
                            <div class="tit-name">Điện thoại:</div>
                            <div class="tit-contain">{{$config->phone}}</div>
                            <div class="tit-name">Email:</div>
                            <div class="tit-contain">{{$config->email}}</div>
                        </div>
                    </div> 
                </div>
                <div class="col-md-4">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="introduce-title">Thông tin Cre8tion</div>
                            <ul id="introduce-company"  class="introduce-list">
                                <li><a href="{{route('about')}}">Giới thiệu Cre8tion</a></li>
                                <li><a href="{{route('contact')}}">Thông tin liên hệ</a></li>
                                <li><a href="#">Thông tin tuyển dụng</a></li>
                            </ul>
                        </div>
                        <!--<div class="col-sm-5">
                            <div class="introduce-title">Chính sách mua hàng</div>
                            <ul id = "introduce-Account" class="introduce-list">
                                <li><a href="#">Quy định chung</a></li>
                                <li><a href="#">Chính sách bảo mật thông tin</a></li>
                                <li><a href="#">Chính sách bảo hành</a></li>
                                <li><a href="#">Chính sách giao nhận</a></li>
                                <li><a href="#">Hình thức thanh toán</a></li>
                            </ul>
                        </div>-->
                        <div class="col-sm-6">
                            <div class="introduce-title">Cộng đồng Cre8tion</div>
                            <ul id = "introduce-support"  class="introduce-list">
                                <li>
                                    <a href="#">
                                        <img src="assets/images/fac.png" alt="" width="25px">  
                                        Cre8tion
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/watch?v=dkSmGVhjAmI&list=UUkfqN3JoHkErKf1nC9SFzAA" target="_blank">
                                        <img src="assets/images/youtobe.png" alt="" width="25px">  
                                        Cre8tion Products
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="assets/images/google.png" alt="" width="25px">  
                                        Cre8tion VietNam
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="assets/images/pinterest.png" alt="" width="25px">  
                                        Cre8tion Nails
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="assets/images/call.png" alt="" width="25px">  
                                        028 3515 6028
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div id="contact-box">
                        
                        <div class="input-group" id="mail-box">
                          <input type="text" placeholder="Nhập Email nhận thông báo"/>
                          <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Đăng kí</button>
                          </span>
                        </div><!-- /input-group -->
                        <div class="introduce-title"></div>
                        <div class="social-link">
                            <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fcre8tionvietnam%2F&tabs=timeline&width=340&height=250&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="340" height="150" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
                        </div>
                    </div>
                    
                </div>
            </div><!-- /#introduce-box -->
            <!-- #trademark-text-box -->
            <div id="trademark-text-box" class="row">
                <div class="col-sm-12">
                    <ul id="trademark-search-list" class="trademark-list">
                        @foreach($protype as $item)
                        <li><a href="#" >{{$item->name}}</a></li>
                        @endforeach
                    </ul>
                </div>
                
            </div><!-- /#trademark-text-box -->
            <div id="footer-menu-box">
                
                <p class="text-center">Copyrights &#169; 2017 cre8tion. All Rights Reserved.</p>
            </div><!-- /#footer-menu-box -->
        </div> 
</footer>
@include('user.blocks.call')
<a href="#" class="scroll_top" title="Scroll to Top" style="display: inline;">Scroll</a>
<!-- Script-->
<script type="text/javascript" src="assets/lib/jquery/jquery-1.11.2.min.js"></script>

<script type="text/javascript" src="assets/lib/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/login-register.js"></script>

<script type="text/javascript" src="assets/lib/select2/js/select2.min.js"></script>
<script type="text/javascript" src="assets/lib/jquery.bxslider/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="assets/lib/owl.carousel/owl.carousel.min.js"></script>
<script type="text/javascript" src="assets/lib/jquery.countdown/jquery.countdown.min.js"></script>
<script type="text/javascript" src="assets/lib/jquery.elevatezoom.js"></script>

<script type="text/javascript" src="assets/lib/jquery-ui/jquery-ui.min.js"></script>

<script type="text/javascript" src="assets/lib/fancyBox/jquery.fancybox.js"></script>

<script type="text/javascript" src="assets/js/jquery.actual.min.js"></script>

<script type="text/javascript" src="assets/js/theme-script.js"></script>

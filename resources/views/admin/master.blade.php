<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Quản lý hê thống</title>
<base href="{{asset('')}}">
<meta name="robots" content="noindex, nofollow" />
<link rel="shortcut icon" href="images/icon.png" type="image/x-icon"/>
<link rel="stylesheet" type="text/css" href="admin_assets/crown/css/main.css" />
<link rel="stylesheet" type="text/css" href="admin_assets/css/css.css" media="screen" />

</head>
<body>
<!-- Left side content -->
@include('admin.blocks.left')
<!-- Right side -->
<div id="rightSide">
  <!-- Account panel top -->
  <div class="topNav">
    <div class="wrapper">
      <div class="welcome"> <span>Xin chào: <b>{{Auth::user()->name}}</b></span> </div>
      <div class="userNav">
        <ul>
          <li><a href="" target="_blank"> <img style="margin-top:7px;" src="admin_assets/images/icons/light/home.png" /> <span>Trang chủ</span> </a></li>
          <!-- Logout -->
          <li><a href="{{route('adminlogout')}}"> <img src="admin_assets/images/icons/topnav/logout.png" alt="" /> <span>Đăng xuất</span> </a></li>
        </ul>
      </div>
      <div class="clear"></div>
    </div>
  </div>

    @yield('content')
 <!-- Footer -->
  <div id="footer">
    <div class="wrapper">
      <div>Bản quyền © 2015 Cre8tion.vn</div>
    </div>
  </div>
</div>
<div class="clear"></div>
</body>
<script type="text/javascript">
  var admin_url   = '';
  var base_url  = '';
  var public_url  = '';
</script>
<script type="text/javascript" src="admin_assets/js/jquery/jquery.min.js"></script>
<script type="text/javascript" src="admin_assets/js/jquery/jquery-ui.min.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/spinner/jquery.mousewheel.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/forms/uniform.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/forms/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/forms/autogrowtextarea.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/forms/jquery.maskedinput.min.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/forms/jquery.inputlimiter.min.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/tables/datatable.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/tables/tablesort.min.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/tables/resizable.min.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/ui/jquery.tipsy.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/ui/jquery.collapsible.min.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/ui/jquery.progress.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/ui/jquery.timeentry.min.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/ui/jquery.colorpicker.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/ui/jquery.jgrowl.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/ui/jquery.breadcrumbs.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/plugins/ui/jquery.sourcerer.js"></script>
<script type="text/javascript" src="admin_assets/crown/js/custom.js"></script>
<script type="text/javascript" src="admin_assets/js/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="admin_assets/js/jquery/chosen/chosen.jquery.min.js"></script>
<script type="text/javascript" src="admin_assets/js/jquery/scrollTo/jquery.scrollTo.js"></script>
<script type="text/javascript" src="admin_assets/js/jquery/number/jquery.number.min.js"></script>
<script type="text/javascript" src="admin_assets/js/jquery/formatCurrency/jquery.formatCurrency-1.4.0.min.js"></script>
<script type="text/javascript" src="admin_assets/js/jquery/zclip/jquery.zclip.js"></script>
<script type="text/javascript" src="admin_assets/js/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="admin_assets/js/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="admin_assets/js/custom_admin.js" type="text/javascript"></script>
  <script type="text/javascript" src="admin_assets/js/myscript.js" type="text/javascript">
</script>
@yield('script')
</html>

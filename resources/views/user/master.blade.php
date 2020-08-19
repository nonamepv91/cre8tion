<!DOCTYPE html>
<html>
<head>
    <style>
        .sortPagiBar .bottom-pagination .pagination .active > span{
            background-color: #ed2227 !important;
            color: #ffffff !important;
        }
    </style>
    <meta charset="UTF-8">
    <base href="{{asset('')}}">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{$config->description}}">
    <link rel="shortcut icon" href="assets/images/{{$config->favicon}}">
    <link rel="stylesheet" type="text/css" href="assets/lib/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/select2/css/select2.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/jquery.bxslider/jquery.bxslider.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/owl.carousel/owl.carousel.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/jquery-ui/jquery-ui.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/fancyBox/jquery.fancybox.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/edit.css" />
     <link rel="stylesheet" type="text/css" href="assets/css/login-register.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/responsive.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/option5.css" />
    <title>sản phẩm nails - cre8tion.vn</title>
    
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-147994475-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-147994475-1');
</script>

</head>
<body class="option5">
@include('user.blocks.header')
@yield('content')
@include('user.blocks.footer')
</body>
</html>
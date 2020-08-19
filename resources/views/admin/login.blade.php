<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login</title>
<base href="{{asset('')}}">
<meta name="robots" content="noindex, nofollow" />
<link rel="shortcut icon" href="admin_asset/images/lock.ico" type="image/x-icon"/>
<link rel="stylesheet" type="text/css" href="admin_assets/css/login.css" media="screen" />
</head>

<body class="login">
		<div class="login-box">
			@if(count($errors) > 0)
				@foreach($errors->all() as $err)
					<div class="alert alert-danger">{{$err}}</div>
				@endforeach
			@endif

				@if(session('thongbao'))
					<div style="color: red">{{session('thongbao')}}</div>
			@endif
			<h2>Đăng nhập hệ thống</h2>
			
			<form action="cre_admin" method="post">
				<input type="hidden" name="_token" value="{{csrf_token()}}" />
				<div class="login-inputbox">
					<input type="text" name="email" required="" />
					<label>Username</label>
				</div>
				<div class="login-inputbox">
					<input type="password" name="password" required="" />
					<label>Password</label>
				</div>
				<button>Đăng nhập</button>
			</form>
		</div>
</body>
</html>
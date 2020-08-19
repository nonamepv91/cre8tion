@extends('layout.index')
@section('content')
<div class="register">
<div class="container">
            <form class="form-horizontal" role="form" action="register" method="post" >
                <input type="hidden" name="_token" value="{{csrf_token()}}">
                @if(count($errors)>0)
                        <div class="alert alert-danger">
                            @foreach($errors->all() as $err)
                            {{$err}}
                            @endforeach
                        </div>
                    @endif
                <h2>Đăng Ký Người Dùng</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Họ tên</label>
                    <div class="col-sm-6">
                        <input type="text" id="firstName" name="name" placeholder="Full Name" class="form-control" autofocus required="">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-6">
                        <input type="email" id="email" name="email" placeholder="Email" class="form-control" required="">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Mật khẩu</label>
                    <div class="col-sm-6">
                        <input type="password" id="password" name="password" placeholder="Password" class="form-control" required="">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Nhập lại mật khẩu</label>
                    <div class="col-sm-6">
                        <input type="password" id="password" name="re_password" placeholder="Password" class="form-control" required="">
                    </div>
                </div>
                 <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Số điện thoại</label>
                    <div class="col-sm-6">
                        <input type="number" id="firstName" placeholder="Số điện thoại" name="phone" class="form-control" autofocus required="">
                    </div>
                </div>
                 <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Địa chỉ</label>
                    <div class="col-sm-6">
                        <input type="text" id="firstName" placeholder="Địa chỉ" name="address" class="form-control" autofocus required="">
                    </div>
                </div>
                 
                
                <div class="form-group">
                    <div class="col-sm-5">
                    </div>
                    <div class="col-sm-2">
                        <button type="submit" class="btn btn-primary btn-block">Đăng ký</button>
                    </div>
                    <div class="col-sm-5">
                    </div>
                </div>
            </form> <!-- /form -->
        </div> <!-- ./container -->

</div>
@endsection



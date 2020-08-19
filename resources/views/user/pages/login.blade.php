<style>
    .modal-header {
  padding: 0;
}
.modal-header .close {
  padding: 10px 15px;
}
.modal-header ul {
  border: none;
}
.modal-header ul li {
  margin: 0;
}
.modal-header ul li a {
  border: none;
  border-radius: 0;
}
.modal-header ul li.active a {
  color: #e12f27;
}
.modal-header ul li a:hover {
  border: none;
}
.modal-header ul li a span {
  margin-left: 10px;
}
.modal-body .form-group {
  margin-bottom: 10px;
}
</style>
<div class="container">
   @if(count($errors) > 0)
                        @foreach($errors->all() as $err)
                        <div class="alert alert-danger">{{$err}}</div>
                        @endforeach
                      @endif
                       @if(session('thongbao'))
                      <div style="color: red">{{session('thongbao')}}</div>
                      @endif
  <div class="row">
    <!-- Signin & Signup -->
    <!-- Login / Register Modal-->
    <div class="modal fade login-register-form" role="dialog">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"> <span class="glyphicon glyphicon-remove"></span> </button>
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#login-form"> Login <span class="glyphicon glyphicon-user"></span></a></li>
              <li><a data-toggle="tab" href="#registration-form"> Register <span class="glyphicon glyphicon-pencil"></span></a></li>
            </ul>
          </div>
          <div class="modal-body">
            <div class="tab-content">
              <div id="login-form" class="tab-pane fade in active">
                <form action="{{route('postlogin')}}" method="post">
                   <input type="hidden" name="_token" value="{{csrf_token()}}">
                  <div class="form-group">
                    <label for="email">Tài khoản:</label>
                    <input type="email" class="form-control" id="email" placeholder="Email" name="email">
                  </div>
                  <div class="form-group">
                    <label for="pwd">Mật khẩu:</label>
                    <input type="password" class="form-control" id="pwd" placeholder="password" name="password">
                  </div>
                  <div class="checkbox">
                    <label>
                    <input type="checkbox" name="remember">
                    Remember me</label>
                  </div>
                  <button type="submit" class="btn btn-default">Đăng nhập</button>
                </form>
              </div>
              <div id="registration-form" class="tab-pane fade">
                <form action="{{route('postregister')}}" method="post">
                  <input type="hidden" name="_token" value="{{csrf_token()}}">
                  <div class="form-group">
                    <label for="newemail">Họ tên:</label>
                    <input type="type" class="form-control" id="name" placeholder="Name" name="name">
                  </div>
                  <div class="form-group">
                    <label for="newemail">Tài khoản:</label>
                    <input type="email" class="form-control" id="newemail" placeholder="New email" name="newemail">
                  </div>
                  <div class="form-group">
                    <label for="newpwd">Mật khẩu:</label>
                    <input type="password" class="form-control" id="newpwd" placeholder="New password" name="newpwd">
                  </div>
                  <div class="form-group">
                    <label for="newpwd">Nhập lại mật khẩu:</label>
                    <input type="password" class="form-control" id="newpwd" placeholder="Repeat password" name="repwd">
                  </div>
                  <button type="submit" class="btn btn-default">Đăng ký</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

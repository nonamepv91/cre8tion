<div class="titleArea">
    <div class="wrapper">
      <div class="pageTitle">
        <h5>User</h5>
        <span>Quản lý tài khoản</span> </div>
      <div class="horControlB menu_action">
        <ul>
          <li><a href="{{route('user.getadd')}}"> <img src="admin_assets/images/icons/control/16/add.png" /> <span>Thêm mới</span> </a></li>
          <li><a href="{{route('user')}}"> <img src="admin_assets/images/icons/control/16/list.png" /> <span>Danh sách</span> </a></li>
        </ul>
      </div>
      <div class="clear"></div>
      @include('admin.blocks.errors')
    </div>
  </div>
  <div class="line"></div>
@extends('admin.master')
@section('content')
 <!-- Title area -->
  @include('admin.user.header')
  <!-- Message -->
  <!-- Main content wrapper -->
  <div class="wrapper" id="main_product">
    <div class="widget">
      <div class="title">
        <h6> Danh sách tài khoản quản trị </h6>
        <div class="num f12">Số lượng: <b>{{$total}}</b></div>
      </div>
      <table cellpadding="0" cellspacing="0" width="100%" class="sTable mTable myTable" id="checkAll">
       
        <thead>
          <tr>
            <td class="title_show">STT</td>
            <td class="title_show">Tên</td>
            <td class="title_show">Tài khoản</td>
            <td class="title_show">Email</td>
            <td class="title_show">Hình đại diện</td>
            <td class="title_show">Quyền</td>
            <td class="title_show">Trạng thái</td>
            <td class="title_show">Hành động</td>
          </tr>
        </thead>
        <tbody class="list_item">
          <?php $stt = 0 ?>
          @foreach($user as $item)
          <?php $stt = $stt + 1  ?>
          <tr class='row_9'>
            <td class="textC"><?php echo $stt ?></td>
            <td class="textC">{{$item->full_name}}</td>
            <td class="textC">{{$item->name}}</td>
            <td class="textC">{{$item->email}}</td>
            <td class="textC"><img src="uploads/user/{{$item->image_link}}" width="70px"></td>
            <td class="textC">
              @if($item->access_level == 0)
                    Admin
                
                @else
                    Member
                @endif
            </td>
            @if($item->status==1)
            <td class="textC status"><img src="admin_assets/images/show.png" /><span>Online</span></td>
            @else
            <td class="textC status"><img src="admin_assets/images/hidden.png" /><span class="noidung">Offline</span></td>
            @endif  
            <td class="option textC">
                <a href="{{route('user.getedit',$item->id)}}" title="Chỉnh sửa" class="tipS"> 
                  <img src="admin_assets/images/icons/color/edit.png" /> 
                </a> 
                <a href="{{route('user.delete',$item->id)}}" title="Xóa" class="tipS verify_action" > 
                  <img src="admin_assets/images/icons/color/delete.png" /> 
                </a> 
              </td>
          </tr>
         @endforeach
        </tbody>
      </table>
    </div>
  </div>
  <div class="clear mt30"></div>
@endsection

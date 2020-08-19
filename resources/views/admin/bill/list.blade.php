@extends('admin.master')
@section('content')
 <!-- Title area -->
  @include('admin.bill.header')
  <!-- Message -->
  <!-- Main content wrapper -->
  <div class="wrapper" id="main_product">
    <div class="widget">
      <div class="title"> <span class="titleIcon">
        <img src="admin_assets/images/icons/control/16/list.png" />
        </span>
        <h6> Danh sách </h6>
        <div class="num f12">Số lượng: <b>{{$total}}</b></div>
      </div>
      <table cellpadding="0" cellspacing="0" width="100%" class="sTable mTable myTable" id="checkAll">
       
        <thead>
          <tr>
            <td class="title_show">STT</td>
            <td class="title_show">Tên</td>
            <td class="title_show">Email</td>
            <td class="title_show">Điện thoại</td>
            <td class="title_show">Địa chỉ</td>
            <td class="title_show">Ngày đặt hàng</td>
            <td class="title_show">Trạng thái</td>
            <td class="title_show">Hành động</td>
          </tr>
        </thead>
        <tfoot class="auto_check_pages">
          <tr>
             <td colspan="6"><div class="list_action itemActions"> <a href="#submit" id="submit" class="button blueB" url="admin/product/del_all.html"> <span style='color:white;'>Xóa hết</span> </a> </div>
            </td>
          </tr>
          <tr> <td colspan="8">{{$customer->links()}}</td></tr>
        </tfoot>
        <tbody class="list_item">
          
          @foreach($customer as $item)
          <tr class='row_9'>
            <td class="textC">{{$item->id}}</td>
            <td class="textC">{{$item->id}}</td>
            <td class="textC">{{$item->id}}</td>
            <td class="textC">{{$item->id}}</td>
            <td class="textC">{{$item->id}}</td>
            <td class="textC">{{$item->id}}</td>
            <td class="textC">{{$item->id}}</td>
            <td class="textC">{{$item->id}}</td>
            <td class="option textC">
             <a href="#" title="Chỉnh sửa" class="tipS"> <img src="admin_assets/images/icons/color/edit.png" /> </a> <a href="#" title="Xóa" class="tipS verify_action" > <img src="admin_assets/images/icons/color/delete.png" /> </a> </td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
  <div class="clear mt30"></div>
@endsection
@section('script')
<script>
  $(document).ready(function(){
      $(".status").css("cursor","pointer");
      $(".status").click(function(){
        id = $(this).parent().find("td:eq(0)").text();
        var status = $(this).find("span.noidung").text();
        var div = $(this);

        if(status){
          status = 1
        }else{
          status = 0;
        }
         $.ajax({
          url: 'admin/product/status',
          type: 'Post',
          data: {"id":id,"status":status,"_token":"{{ csrf_token() }}"},
        })
        .done(function(data){
          if(data=='ok'){
            if(status == 1){
              div.html('<img src="admin_assets/images/show.png" /><span>On</span>');
            }
            else{
              div.html('<img src="admin_assets/images/hidden.png" /><span class="noidung">Off</span>');
            }
          }
        })
      })
    });
</script>
@endsection


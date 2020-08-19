@extends('admin.master')
@section('content')
 <!-- Title area -->
  @include('admin.cate.header')
  <!-- Message -->
  <!-- Main content wrapper -->
  <div class="wrapper" id="main_product">
    <div class="widget">
      <div class="title">
        <h6> Danh sách slide </h6>
        <div class="num f12">Số lượng: <b>{{$total}}</b></div>
      </div>
      <table cellpadding="0" cellspacing="0" width="100%" class="sTable mTable myTable" id="checkAll">
       
        <thead>
          <tr>
            <td class="title_show">STT</td>
            <td class="title_show">Tên</td>
            <td class="title_show">Tên không dấu</td>        
            <td class="title_show">Keyword</td>
            <td class="title_show">Description</td>
            <td class="title_show">Thứ tự</td>
             <td class="title_show">Trạng thái</td>
            <td class="title_show">Hành động</td>
          </tr>
        </thead>
        <tfoot class="auto_check_pages">
          
        </tfoot>
        <tbody class="list_item">
          @foreach($cate as $item)
          <tr class='row_9'>
            <td class="textC">{{$item->id}}</td>
            <td class="textC">{{$item->name}}</td>
            <td class="textC">{{$item->slug}}</td>           
            <td class="textC">{{$item->keyword}}</td>
            <td class="textC">{{$item->description}}</td>
            <td class="textC">{{$item->sort_order}}</td>
            @if($item->status==1)
            <td class="textC status"><img src="admin_assets/images/show.png" /><span>On</span></td>
            @else
            <td class="textC status"><img src="admin_assets/images/hidden.png" /><span class="noidung">Off</span></td>
            @endif  
            <td class="option textC">
                <a href="{{route('cate.getedit',$item->id)}}" title="Chỉnh sửa" class="tipS"> 
                  <img src="admin_assets/images/icons/color/edit.png" /> 
                </a> 
                <a href="{{route('cate.delete',$item->id)}}" title="Xóa" class="tipS verify_action" > 
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
          url: 'admin/cate/status',
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

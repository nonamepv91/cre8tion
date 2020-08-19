@extends('admin.master')
@section('content')
 <!-- Title area -->
  @include('admin.product.header')
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
        <thead class="filter">
          <tr>
            <td colspan="6"><form class="list_filter form" action="{{route('product')}}" method="get">
                <table cellpadding="0" cellspacing="0" width="80%">
                  <tbody>
                    <tr>
                      <td class="label" style="width:40px;"><label for="filter_id">Từ khoá:</label></td>
                      <td class="item" style="width:155px;" ><input name="tukhoa" id="filter_iname" type="text" style="width:155px;" placeholder="Nhập từ khóa cần tìm..." /></td>
                      <td class="label" style="width:60px;"><label for="filter_status">Loại sản phẩm:</label></td>
                      <td class="item"><select name="protype" style="width: 160px;">
                          <option value="">-- Chọn danh mục --</option>
                          <!-- kiem tra danh muc co danh muc con hay khong -->
                         @foreach($cate as $item)
                          <optgroup label="{{$item->name}}">
                            @foreach($item->product_type as $subitem)
                              <option value="{{$subitem->id}}" > {{$subitem->name}} </option>
                            @endforeach
                          </optgroup>
                         @endforeach
                        </select>
                      </td>
                      <td style='width:150px'><input type="submit" class="button blueB" value="Tìm kiếm" />
                        
                      </td>
                    </tr>
                  </tbody>
                </table>
              </form></td>
          </tr>
        </thead>
        <thead>
          <tr>
            <td class="title_show">STT</td>
            <td class="title_show">Tên</td>
            <td class="title_show">Item Code</td>
            <td class="title_show">Loại sản phẩm</td>
            <td class="title_show">Giá</td>
            <td class="title_show">Giảm giá</td>
            <td class="title_show">Hiển thị</td>
            <td class="title_show">Hành động</td>
          </tr>
        </thead>
        <tfoot class="auto_check_pages">
          <tr>
             <td colspan="6"><div class="list_action itemActions"> <a href="#submit" id="submit" class="button blueB" url="admin/product/del_all.html"> <span style='color:white;'>Xóa hết</span> </a> </div>
            </td>
          </tr>
          <tr> <td colspan="8">{{$product->links()}}</td></tr>
        </tfoot>
        <tbody class="list_item">
          
          @foreach($product as $item)
          <tr class='row_9'>
            <td class="textC">{{$item->id}}</td>
            <td><div class="image_thumb"> <img src="uploads/product/{{$item->image_link}}" width="50px"></div>
                <a class="tipS" > <b>{{$item->name}}</b> </a>
              <div class="f11" > Đã bán: 0 | Xem: 20 </div>
            </td>
            <td class="textC">{{$item->item_code}}</td>
            <td class="textC">{{$item->product_type->name}}</td>
            <td class="textC">{{number_format($item->price)}} (VNĐ)</td>
            <td class="textC">{{number_format($item->discount_price)}} (VNĐ)</td>
            @if($item->status==1)
            <td class="textC status"><img src="admin_assets/images/show.png" /><span>On</span></td>
            @else
            <td class="textC status"><img src="admin_assets/images/hidden.png" /><span class="noidung">Off</span></td>
            @endif  
            <td class="option textC">
             <a href="{{route('product.getedit',$item->id)}}" title="Chỉnh sửa" class="tipS"> <img src="admin_assets/images/icons/color/edit.png" /> </a> <a href="{{route('product.delete',$item->id)}}" title="Xóa" class="tipS verify_action" > <img src="admin_assets/images/icons/color/delete.png" /> </a> </td>
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


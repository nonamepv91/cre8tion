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
        <h6> Danh sách đơn hàng </h6>
        <div class="num f12">Số lượng: <b>{{$total}}</b></div>
      </div>
      <table cellpadding="0" cellspacing="0" width="100%" class="sTable mTable myTable" id="checkAll">
       
        <thead>
          <tr>
            <td class="title_show">STT</td>
            <td class="title_show">Mã đơn hàng</td>
            <td class="title_show">Người đặt</td>
            <td class="title_show">Số lượng</td>
            <td class="title_show">Tổng tiền</td>
            <td class="title_show">Thanh toán</td>
            <td class="title_show">Trạng thái</td>
            <td class="title_show">Ghi chú</td>
            <td class="title_show">Hành động</td>
          </tr>
        </thead>
        <tfoot class="auto_check_pages"> 
          <tr> <td colspan="9"></td></tr>
        </tfoot>
        <tbody class="list_item">
         @foreach($order as $item)
          <tr class='row_9'>
            <td class="textC">{{$item->id}}</td>
            <td class="textC">{{$item->order_code}}</td>
            <td class="textC">{{$item->customer->name}}</td>
            <td class="textC">{{$item->quantity}}</td>
            <td class="textC">{{$item->total}}</td>
            <td class="textC">{{$item->payment}}</td>
           
              @foreach($status as $items)
                @if($item->status == $items->code)
                 <td class="textC {{$items->color}}">
                  {{$items->status}}
                </td>
                @endif
              @endforeach
           
            <td class="textC">{{$item->customer->note}}</td>
            <td class="option textC">
              <a href="{{route('bill.detail', $item->id)}}" title="Xem đơn hàng" class="tipS"> <img src="admin_assets/images/icons/color/view.png" /> </a>
             <a href="{{route('order.getedit',$item->id)}}" title="Chỉnh sửa" class="tipS"> <img src="admin_assets/images/icons/color/edit.png" /> </a> <a href="#" title="Xóa" class="tipS verify_action" > <img src="admin_assets/images/icons/color/delete.png" /> </a> </td>
          </tr>
          @endforeach  
        </tbody>
      </table>
    </div>
  </div>
  <div class="clear mt30"></div>
@endsection


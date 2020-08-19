@extends('admin.master')
@section('content')
@include('admin.bill.header')
<div class="wrapper" id="main_product" style="margin-top: 30px;">
  <div class="widget detail">
    <div class="title">
      <h1> hóa đơn ban hàng </h1>
      <span>Ngày 12 Tháng 04 Năm 2019</span>
    </div>
    <div class="inf-detail">
      <div><span style="display:inline-block; width: 150px;">Khách hàng:</span><span>{{$order->customer->name}}</span></div>
      <div><span style="display:inline-block; width: 150px;">Điện thoại:</span><span>{{$order->customer->phone}}</span></div>
      <div><span style="display:inline-block; width: 150px;">Địa chỉ:</span><span>{{$order->customer->address}}</span></div>
    </div>
    <table cellpadding="0" cellspacing="0" width="100%" class="sTable mTable myTable" id="checkAll" border="1px">
      <thead>
        <tr>
          <td class="title_show">STT</td>
          <td class="title_show">Tên sản phẩm</td>
          <td class="title_show">Item Code</td>
          <td class="title_show">Số lượng</td>
          <td class="title_show">Đơn giá</td>
          <td class="title_show">Thành tiền</td>
        </tr>
      </thead>

      <tbody class="list_item">
        <?php
        		$stt = 0; 
        	?>
      @foreach($detail as $item)
      <?php
         	$stt = $stt + 1;
         ?>
      <tr class='row_9'>
        <td class="textC"><?php echo $stt ?></td>
        <td class="textL">{{$item->product_name}}</td>
        <td class="textC">{{$item->item_code}}</td>
        <td class="textC">{{$item->quantity}}</td>
        <td class="textC">{{number_format($item->price)}}</td>
        <td class="textC">{{number_format($item->totalprice)}}</td>
      </tr>
      @endforeach
      <tr>
        <td colspan="4" style="text-align: right; font-weight: bold; font-size: 14px; color: #000000;">Tổng:</td>
        <td colspan="2" style="text-align: right; font-weight: bold; font-size: 14px; color: #000000;">{{number_format($order->total)}} VNĐ</td>
      </tr>
      <tr>
        <td colspan="6" style="text-align: right;"><?php echo '<b>'.convert_number_to_words($order->total).'</b>'; ?></td>
      </tr>
      </tbody>
      <tr>
        <td colspan="6">
          <span><a href="admin/bill/export/{{$order->id}}">Xuât File</a></span>
        </td>
      </tr>
    </table>
  </div>
</div>
<div class="clear mt30"></div>
@endsection
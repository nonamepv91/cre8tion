<table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#dcf0f8" style="margin:0;padding:0;background-color:#f2f2f2;width:100%!important;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px">
  <tbody>
    <tr>
      <td align="center" valign="top" style="font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal"><table border="0" cellpadding="0" cellspacing="0" width="600" style="margin-top:15px">
          <tbody>
            <tr>
              <td><table width="100%" cellpadding="0" cellspacing="0" style="border-bottom:2px solid #f100c84d;padding-bottom:5px">
                  <tbody>
                    <tr>
                      <td valign="top" bgcolor="#FFFFFF" width="100%" style="padding:0">
                        <a> Cre8tion.vn </a> </td>
                    </tr>
                  </tbody>
                </table></td>
            </tr>
            <tr style="background:#fff">
              <td align="left" width="600" height="auto" style="padding:15px"><table>
                  <tbody>
                    <tr>
                      <td>
                        <h1 style="font-size:17px;font-weight:bold;color:#444;padding:0 0 5px 0;margin:0"> {{ $name }} thân mến,</h1>
                        <p style="margin:4px 0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal"> Yêu cầu đặt hàng cho đơn hàng #211509758476128 của bạn đã được tiếp nhận và đang chờ xử lý. Chúng tôi sẽ tiếp tục cập nhật với bạn về trạng thái tiếp theo của đơn hàng. </p>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        
                        <h2 class="titleh2"> Thông Tin Đơn Hàng #462372507 <span style="font-size:12px;color:#777;text-transform:none;font-weight:normal">(Ngày 09 Tháng 12 Năm 2018 19:24:45)</span> </h2></td>
                    </tr>
                    <tr>
                      <td style="font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px"><table cellspacing="0" cellpadding="0" border="0" width="100%">
                          <thead>
                            <tr>
                              <th align="left" style="padding:6px 9px 0px 9px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;font-weight:bold"> Thông tin thanh toán </th>

                               <td valign="top" style="padding:3px 9px 9px 9px;border-top:0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal"><span style="text-transform:capitalize">{{ $name }}</span> <br>
                                <a href="mailto:noname8429@gmail.com" target="_blank">{{ $email }}</a> <br>
                                {{ $phone }}</td>
                            </tr>
                          </thead>

                          <tbody>
                            <tr>
                              <th align="left" style="padding:6px 9px 0px 9px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;font-weight:bold"> Địa chỉ giao hàng </th>
                              <td valign="top" style="padding:3px 9px 9px 9px;border-top:0;border-left:0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal"> <br>
                                <br>
                                {{ $address }}
                            </tr>
                            <tr>
                              <td valign="top" style="padding:7px 9px 0px 9px;border-top:0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444" colspan="2"><p style="font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal"> <strong>Phương thức thanh toán: </strong> Thanh toán tiền mặt khi nhận hàng <br>
                                </p></td>
                            </tr>
                          </tbody>
                        </table></td>
                    </tr>
                    <tr>
                      <td><h2 class="titleh2"> CHI TIẾT ĐƠN HÀNG</h2>
                        <table cellspacing="0" cellpadding="0" border="0" width="100%" style="background:#f5f5f5">
                          <thead>
                            <tr>
                              <th align="left" class="title-detail">Sản phẩm</th>
                              <th align="left" class="title-detail"> Đơn giá</th>
                              <th align="left" class="title-detail">Số lượng</th>
                             
                              <th align="right" class="title-detail">Thành tiền</th>
                            </tr>
                          </thead>
                          <tbody bgcolor="#eee" style="font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px">
                           
                             @foreach(Cart::content() as $cart)
                            <tr>
                              <td class="content-detail"><span>{{$cart->name}}</span> <br>
                              </td>

                              <td class="content-detail"><span>{{ number_format(($cart->price),0,",",".") }} VNĐ</span> </td>
                              <td class="content-detail">{{$cart->qty}}</td>
                              <td align="right" class="content-detail"><span>{!! number_format(($cart->price)*($cart->qty),0,",",".") !!} VND</span> </td>
                            </tr>
                             @endforeach
                          
                             
                          </tbody>
                          <tfoot style="font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px">
                           
                            
                            <tr bgcolor="#eee" style="border-top-style: 1px">
                              <td colspan="3" align="right" style="color: red; padding: 10px 0px"><strong> <big>Tổng tiền</big> </strong> </td>
                              <td align="right" style="color: red; padding: 10px 0px"><strong> <big> <span>{{ Cart::subtotal('0',',','.') }} VND</span> </big> </strong> </td>
                            </tr>
                          </tfoot>
                        </table>
                      </td>
                    </tr>
                    <tr>
                      <td><br>
                        <p style="font-family:Arial,Helvetica,sans-serif;font-size:12px;margin:0;padding:0;line-height:18px;color:#444;font-weight:bold"> cre8tion Vietnam cảm ơn quý khách. <br>
                        </p></td>
                    </tr>
                  </tbody>
                </table></td>
            </tr>
          </tbody>
        </table></td>
    </tr>
    <tr>
      <td align="center">
    <table width="600">
          <tbody>
            <tr>
              <td><p class="address">
                  <b>Địa chỉ:</b> 1A Nguyễn Văn Đậu, phường 5, quận Phú Nhuận, thành phố Hồ Chí Minh<br>
                            </p></td>
            </tr>
          </tbody>
        </table></td>
    </tr>
  </tbody>
</table>
<style>
  .title-detail{
    padding:9px 14px;
    color:#fff;
    font-family:Arial,Helvetica,sans-serif;
    font-size:12px;
    line-height:14px;
    background-image: linear-gradient(#f915dde8, #ef0e0e);
  }
  .content-detail{
    padding: 5px 0px;
  }
  .titleh2{
    text-align:left;margin:10px 0;border-bottom:1px solid #a30af1;padding-bottom:5px;font-size:13px;color:#ea0278
  }
  .address{
    font-family: sans-serif;
    font-size:11px;
    line-height:18px;
    color:#e20b50;
    padding:10px 10px;
    margin:0px;
    font-weight:normal
  }
</style>
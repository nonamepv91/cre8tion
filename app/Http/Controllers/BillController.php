<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Orders;
use App\OrderDetail;
use App\Customer;
use App\Status;
use Excel;

class BillController extends Controller
{
    //
    public function getListCustomer(){
    	$customer = DB::table('orders')
                        ->join('customer', 'customer.id', '=', 'orders.customer_id')
                        ->select('orders.*', 'customer.*')
                        ->get();
    	$order = Orders::All();
    	$total = count($customer);
    	$status = Status::All();
    	return view('admin.bill.listcustomer', compact('customer','total','order','status'));
    }
    public function getListOrder(){
    	$order = Orders::All();
    	$total = count($order);
    	$status = Status::All();
    	return view('admin.bill.listorder',compact('order','total','status'));
    }
    public function getEditCustomer($id){
    	$customer = Customer::find($id);
    	return view('admin.bill.editcustomer',compact('customer'));
    }
    public function postEditCustomer(Request $req, $id){
    	$this->validate($req,
    		[	
    			'txtPhone'=>'required',
    			'txtAddress'=>'required',
    		],
    		[	
    			'txtPhone.required'=>'Điện thoại không được trống.',
    			'txtAddress.required'=>'Địa chỉ không được trống.',
    		]);
    	$customer = Customer::find($id);
    	$customer->phone = $req->txtPhone;
    	$customer->address = $req->txtAddress;
    	$customer->note = $req->txtNote;

    	$customer->save();
    	return redirect()->route('customer')->with(["flash_level"=>"success","flash_message"=>"Sửa thành công !"]);
    }
    public function getEditOrder($id){
    	$order = Orders::find($id);
    	$status = Status::All();
    	return view('admin.bill.editorder',compact('order','status'));
    }
    public function postEditOrder(Request $req, $id){
    	$order = Orders::find($id);
    	$order->status = $req->txtStatus;

    	$order->save();
    	return redirect()->route('order')->with(["flash_level"=>"success","flash_message"=>"Cập nhật trạng thái đơn hàng thành công."]);
    }
    public function getDetail($id){
    	$order = Orders::find($id);
    	$detail = OrderDetail::where('order_id',$id)->get();
    	return view('admin.bill.detail',compact('detail','order'));
    }
     
}

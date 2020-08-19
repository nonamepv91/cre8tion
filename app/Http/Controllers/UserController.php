<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;
use Input;
use File;


class UserController extends Controller
{
    public function getList(){
    	$user = User::All();
    	$total = count($user);
        if(Auth::user()->access_level != 0){
            return redirect()->route('dashboard')->with(['flash_level'=>'warning','flash_message'=>'Không có quyền truy cập']);
        }
    	return view('admin.user.list',compact('user','total'));
    }
    public function getAdd(){
    	return view('admin.user.add');
    }
    public function postAdd(Request $req){

    	$this->validate($req,
    		[
    			'txtName'=>'required',
    			'txtEmail'=>'required|unique:users,email|email',
    			'txtPass'=>'required|min:6|max:32',
    			'txtRePass'=>'same:txtPass',
    			'txtLevel'=>'required',
    			'txtfImage'=>'image',
    		],
    		[
    			'txtName.required'=>'Chưa nhâp tên',
    			'txtEmail.required'=>'Chưa nhập Email',
    			'txtEmail.unique'=>'Email đả tồn tại',
    			'txtEmail.email'=>'Email không đúng định dạng',
    			'txtPass.required'=>'Chưa nhập mật khẩu',
    			'txtPass.min'=>'Mật khẩu có độ dài từ 6 đên 32 ký tự',
    			'txtPass.max'=>'Mật khẩu có độ dài từ 6 đên 32 ký tự',
    			'txtRePass.same'=>'Nhập lại mật khẩu không khớp',
    			'txtLevel.required'=>'Chưa chọn quyên tài khoản',
    			'txtfImage.image'=>'Tập tin không đúng định dạng',

    		]);
    	$user1 = new User();
    	$user1->full_name = $req->txtName;
        $user1->email = $req->txtEmail;
    	$user1->password = bcrypt($req->txtPass);
        $user1->remember_token = $req->_token;
    	$user1->access_level = $req->txtLevel;
        $user1->status = 1;
    	if($req->hasfile('txtfImage')){
    		$file = $req->file('txtfImage');
    		$name = $file->getClientOriginalName();
    		$image_link = str_random(5).'_'.$name;
    		while(file_exists("uploads/user/".$image_link)){
    			$image_link = str_random(5).'_'.$name;
    		}
    		$file->move("uploads/user",$image_link);
    		$user1->image_link = $image_link;
    	}
    	$user1->save();
    	return redirect()->route('user')->with(['flash_level'=>'success','flash_message'=>'tạo tài khoản thành công!']);
    }
    public function getEdit($id){
        $user = User::find($id);
        if(Auth::user()->access_level != 0){
            return redirect()->route('user')->with(['flash_level'=>'warning','flash_message'=>'Không có quyền truy cập']);
        }
        return view('admin.user.edit',compact('user'));
    }
    public function postEdit(Request $req, $id){
        $user = User::find($id);
        if($req->input('txtPass')){
            $this->validate($req,
                [
                    'txtRePass'=>'same:txtRePass'
                ],
                [
                    'txtRePass'=>'Nhập lại mậ khâu không khớp'
                ]);
            $pass = $req->input('txtPass');
            $user->password = bcrypt($pass);
        }
        $user->full_name = $req->txtName;
        $user->access_level = $req->txtLevel;
        $curent_image = 'uploads/user/'.$req->image_curent;
        if($req->hasfile('fImage')){
            $file = $req->file('fImage');
            $name = $file->getClientOriginalName();
            $fImage = str_random(5).'_'.$name;
            while (file_exists('uploads/user/'.$fImage)) {
              $fImage = str_random(5).'_'.$name;
            }
            $file->move('uploads/user/',$fImage);
            $user->image_link = $fImage;
            if(File::exists($current_image)){
              File::delete($current_image);
            }
        }
        $user->save();
        return redirect()->route('user')->with(['flash_level'=>'success','flash_message'=>'Cập nhật tài khoản thành công']);
    }
    public function getDelete($id){
        $user = User::find($id);
        $avatar = "uploads/user/".$user->image_link;
        if(Auth::user()->id == $user->id && Auth::user()->access_level != 0){
            return redirect()->route('user')->with(['flash_level'=>'danger','flash_message'=>'Không có quyền!']);
        }else{
            if(File::exists($avatar)){
                File::delete($avatar);
            }
            $user->delete($id);
            return redirect()->route('user')->with(['flash_level'=>'success','flash_message'=>'Xóa tái khoản thành công.']);
        }
    }
    public function getLogout()
    {
        Auth::logout();
        return redirect('cre_admin');
    }
   
    
}

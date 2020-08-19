<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Banners;
use Input, File;

class BannerController extends Controller
{
    //
    public function getList(){
    	$banner = Banners::all();
    	$total = count($banner);
    	return view('admin.banner.list',compact('total','banner'));
    }
    public function getAdd(){
    	return view('admin.banner.add');
    }
    public function postAdd(Request $req){

    	$this->validate($req,
    		[
    			'txtName'=>'required',
    			'txtfImage'=>'required|image',
    			'txtLocation'=>'required',
    			'txtSort'=>'numeric',
    		],
    		[
    			'txtName.required'=>'Chưa nhâp tên.',
    			'txtfImage.required'=>'Chưa chọn hình ảnh.',
    			'txtfImage.image'=>'Tập tin không đúng định dạng.',
    			'txtLocation.required'=>'Chưa chọn vị trí.',
    			'txtSort.numeric'=>'Thứ tự phải là số.',
    		]);
    	$banner = new Banners();
    	$banner->name = $req->txtName;
    	$banner->link = $req->txtLink;
    	$banner->status = 1;
    	$banner->location = $req->txtLocation;
    	$banner->sort_order = $req->txtSort;
    	if($req->hasfile('txtfImage')){
    		$file = $req->file('txtfImage');
    		$name = $file->getClientOriginalName();
    		$fImage = str_random(5).'_'.$name;
    		while(file_exists('uploads/banner/'.$fImage)){
    			$fImage = str_random(5).'_'.$name;
    		}
    		$file->move('uploads/banner/',$fImage);
    		$banner->image_link = $fImage;
    	}
    	$banner->save();
    	return redirect()->route('banner')->with(['flash_level'=>'success','flash_message'=>'Thêm mới thành công !!!']);
    }
    public function getEdit($id){
    	$banner = Banners::find($id);
    	return view('admin.banner.edit',compact('banner'));
    }
    public function postEdit(Request $req, $id){
    	$this->validate($req,
    		[
    			'txtName'=>'required',
    			'txtfImage'=>'image',
    			'txtLocation'=>'required',
    			'txtSort'=>'numeric',
    		],
    		[
    			'txtName.required'=>'Chưa nhâp tên.',
    			'txtfImage.image'=>'Tập tin không đúng định dạng.',
    			'txtLocation.required'=>'Chưa chọn vị trí.',
    			'txtSort.numeric'=>'Thứ tự phải là số.',
    		]);
    	$banner = Banners::find($id);
    	$banner->name = $req->txtName;
    	$banner->link = $req->txtLink;
    	$banner->location = $req->txtLocation;
    	$banner->sort_order = $req->txtSort;
    	$current_image = 'uploads/banner/'.$req->current_image;
    	if($req->hasfile('txtfImage')){
    		$file = $req->file('txtfImage');
    		$name = $file->getClientOriginalName();
    		$fImage = str_random(5).'_'.$name;
    		while(file_exists('uploads/banner/'.$fImage)){
    			$fImage = str_random(5).'_'.$name;
    		}
    		$file->move('uploads/banner/',$fImage);
    		$banner->image_link = $fImage;
    		if(File::exists($current_image)){
    			File::delete($current_image);
    		}
    	}
    	$banner->save();
    	return redirect()->route('banner')->with(['flash_level'=>'success','flash_message'=>'Sửa thành công !!!']);
    }
    public function getDelete($id){
        $banner = Banners::find($id);
        $current_image = 'uploads/banner/'.$banner->image_link;
        if(File::exists($current_image)){
            File::delete($current_image);
        }
        $banner->delete();
        return redirect()->route('banner')->with(['flash_level'=>'success','flash_message'=>'Xóa thành công !!!']);
    }
    public function postStatus(Request $req){
        if($req->ajax()){
            $status = Banners::find($req->input('id'));
            if($status){
                $status->status = $req->input('status');
                $status->save();
                return "ok";
            }

        }
    }

}

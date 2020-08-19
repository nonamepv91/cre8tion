<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use Input, File;

class CategoryController extends Controller
{
    //
    public function getList(){
    	$cate = Category::all();
    	$total = count($cate);
    	return view('admin.cate.list',compact('total','cate'));
    }
    public function getAdd(){
    	return view('admin.cate.add');
    }
    public function postAdd(Request $req){
    	$this->validate($req,
    		[
    			'txtName'=>'required',
    			'txtKeyword'=>'required',
    			'txtDescription'=>'required',
    			'txtSort'=>'numeric',
    		],
    		[
    			'txtName.required'=>'Tên không được trống',
    			'txtKeyword.required'=>'Từ khóa không được trống',
    			'txtDescription.required'=>'Mô tả không được trống',
    			'txtSort.numeric'=>'Thứ tự phải lá số',
    		]);
    	$cate = new Category();
    	$cate->name = $req->txtName;
    	$cate->slug = changeTitle($req->txtName);
    	$cate->status = 1;
    	$cate->sort_order = $req->txtSort;
    	$cate->keyword = $req->txtKeyword;
    	$cate->description = $req->txtDescription;
    	$cate->save();

    	return redirect()->route('category')->with(['flash_level'=>'success','flash_message'=>'Thêm mới thành công !']);
    }
    public function getEdit($id){
    	$cate = Category::find($id);
    	return view('admin.cate.edit',compact('cate'));
    }
    public function postEdit(Request $req, $id){
    	$this->validate($req,
    		[
    			'txtName'=>'required',
    			'txtKeyword'=>'required',
    			'txtDescription'=>'required',
    			'txtSort'=>'numeric',
    		],
    		[
    			'txtName.required'=>'Tên không được trống',
    			'txtKeyword.required'=>'Từ khóa không được trống',
    			'txtDescription.required'=>'Mô tả không được trống',
    			'txtSort.numeric'=>'Thứ tự phải lá số',
    		]);
    	$cate = Category::find($id);
    	$cate->name = $req->txtName;
    	$cate->keyword = $req->txtKeyword;
    	$cate->description = $req->txtDescription;
    	$cate->sort_order = $req->txtSort;
    	$cate->save();

    	return redirect()->route('category')->with(['flash_level'=>'success','flash_message'=>'Sửa thành công !']);
    }
    public function getDelete($id){
    	$cate = Category::find($id);
    	$cate->delete();

    	return redirect()->route('category')->with(['flash_level'=>'success','flash_message'=>'Xóa thành công !']);
    }
    public function postStatus(Request $req){
    	if($req->ajax()){
    		$status = Category::find($req->input('id'));
    		if($status){
    			$status->status = $req->input('status');
    			$status->save();
    			return 'ok';
    		}
    	}
    }
}

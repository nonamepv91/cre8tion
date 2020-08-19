<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ProductType;
use App\Category;
use Input, File;

class ProTypeController extends Controller
{
    //
    public function getList(){
    	$protype = ProductType::all();
    	$total = count($protype);
    	return view('admin.protype.list',compact('total','protype'));
    }
    public function getAdd(){
        $cate = Category::all();
    	return view('admin.protype.add',compact('cate'));
    }
    public function postAdd(Request $req){
        $this->validate($req,
            [
                'txtName'=>'required',
                'txtCategory'=>'required',
                'fImage'=>'image',
                'txtSort'=>'numeric',
            ],
            [
                'txtName.required'=>'Tên không được trống.',
                'txtCategory.required'=>'Chưa chọn dạnh mục.',
                'fImage.image'=>'Tập tin không đúng định dạng.',
                'txtSort.numeric'=>'Thứ tự phải là số.',
            ]);	
        $protype = new ProductType();
        $protype->name = $req->txtName;
        $protype->alias = changeTitle($req->txtName);
        $protype->id_cat = $req->txtCategory;
        $protype->status = 1;
        $protype->new_product = 0;
        $protype->sort_order = $req->txtSort;
        $protype->keyword = $req->txtKeyword;
        $protype->description = $req->txtDescription;

        if($req->hasfile('fImage')){
    		$file = $req->file('fImage');
            $name = $file->getClientOriginalName();
            $fImage = str_random(5).'_'.$name;
            $file->move('uploads/protype/',$fImage);
            $protype->image_link = $fImage; 
        }
        $protype->save();
        return redirect()->route('product-type')->with(['flash_level'=>'success','flash_message'=>'Thêm mới thành công !']);
    }
    public function getEdit($id){
        $protype = ProductType::find($id);
        $cate = Category::all();
        return view('admin.protype.edit',compact('protype','cate'));
    }
    public function postEdit(Request $req, $id){
        $this->validate($req,
            [
                'txtName'=>'required',
                'txtCategory'=>'required',
                'txtfImage'=>'image',
                'txtSort'=>'numeric',
            ],
            [
                'txtName.required'=>'Tên không được trống.',
                'txtCategory.required'=>'Chưa chọn dạnh mục.',
                'txtfImage.image'=>'Tập tin không đúng định dạng',
                'txtSort.numeric'=>'Thứ tự phải là số.',
            ]);
        $protype = ProductType::find($id);
        $protype->name = $req->txtName;
        $protype->alias = changeTitle($req->txtName);
        $protype->id_cat = $req->txtCategory;
        $protype->sort_order = $req->txtSort;
        $protype->keyword = $req->txtKeyword;
        $protype->description = $req->txtDescription;
        $current_image = "uploads/protype/".$req->current_image;
        if($req->hasfile('fImage'))
            {
                $file = $req->file('fImage');
                $name = $file->getClientOriginalName();
                $fImage = str_random(5).'_'.$name;
                $file->move('uploads/protype/',$fImage);
                $protype->image_link = $fImage;
                if(File::exists($current_image)){
                    File::delete($current_image);
                }
            }
        $protype->save();
        return redirect()->route('product-type')->with(['flash_level'=>'success','flash_message'=>'Sửa thành công !']);
    }
    public function getDelete($id){
        $protype = ProductType::find($id);
        $current_image = 'uploads/protype/'.$protype->image_link;
        if(File::exists($current_image)){
            File::delete($current_image);
        }
        $protype->delete();
        return redirect()->route('product-type')->with(['flash_level'=>'success','flash_message'=>'Xóa thành công !']);
    }
    public function postStatus(Request $req){
        if($req->ajax()){
            $protype = ProductType::find($req->input('id'));
            if($protype){
                $protype->status = $req->input('status');
                $protype->save();
                return 'ok';
            }
        }
    }
    public function postPronew(Request $req){
        if($req->ajax()){
            $protype = ProductType::find($req->input('id'));
            if($protype){
                $protype->new_product = $req->input('new_product');
                $protype->save();
                return 'ok';
            }
        }
    }
}

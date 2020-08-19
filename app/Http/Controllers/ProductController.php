<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;
use App\Category;
use App\ProductImage;
use File, Input;

class ProductController extends Controller
{
    //
    public function getList(Request $req){
        $cate = Category::All();
        $tukhoa = $req->tukhoa;
        $protype = $req->protype;
        if(!empty($protype))
            $product = Products::Where('id_type',$protype)->orderBy('id','DESC')->paginate(50);
        else
            $product = Products::Where('name','like',"%"."$tukhoa"."%")->orWhere('item_code','like',"%"."$tukhoa"."%")->orderBy('id','DESC')->paginate(50);
        $total = count(Products::All()); 
        return view('admin.product.list',compact('total','product','cate'));
    }
    public function getAdd(){
    	 $cate = Category::All();
         return view('admin.product.add', compact('cate'));
    }
    public function postAdd(Request $req){
    	$this->validate($req,
            [
                'txtName'=>'required',
                'txtItem'=>'required',
                'txtType'=>'required',
                'fImage'=>'image',
                'txtPrice'=>'numeric',
                'txtDiscount'=>'numeric',
            ],
            [
                'txtName.required'=>'Chưa nhập tên sản phẩm.',
                'txtItem.required'=>'Chưa nhập item code sản phẩm.',
                'txtType.required'=>'Chưa chọn loại sản phẩm.',
                'fImage.image'=>'Tập tin không đúng định dạng.',
                'txtPrice.numeric'=>'Giá sản phẩm phải là sô.',
                'txtDiscount.numeric'=>'Giảm giá phải là số.',
            ]);
        $product = new Products();
        $product->name = $req->txtName;
        $product->alias = changeTitle($req->txtName);
        $product->item_code = $req->txtItem;
        $product->id_type = $req->txtType;
        $product->price = $req->txtPrice;
        $product->discount_price = $req->txtDiscount;
        $product->detail = $req->txtDetail;
        $product->keyword = $req->txtKeyword;
        $product->description = $req->txtDescription;
        $product->status = 1;
        $product->sort_order = $req->txtSort;
        if($req->hasfile('fImage')){
            $file = $req->file('fImage');
            $name = $file->getClientOriginalName();
            $fImage = str_random(5).'_'.$name;
            while(file_exists('uploads/product/'.$fImage)){
                $fImage = str_random(5).'_'.$name;
            }
            $file->move('uploads/product/',$fImage);
            $product->image_link = $fImage;
        }
        $product->save();
        $product_id = $product->id;
        if($req->hasfile('fProductDetail')){
           foreach($req->file('fProductDetail') as $file){
            $product_img = new ProductImage();
            if(isset($file)){
                $name = $file->getClientOriginalName();
                $fproductdetail = str_random(5).'_'.$name;
                while(file_exists('uploads/detail/'.$fproductdetail)){
                    $fproductdetail = str_random(5).'_'.$name;
                }
                $product_img->image = $fproductdetail;
                $product_img->product_id = $product_id;
                $file->move('uploads/detail/',$fproductdetail);
                $product_img->save();
            }
           } 
        }
        return redirect()->route('product')->with(['flash_level'=>'success','flash_message'=>'Thêm mới thành công !']);
    }
    public function getEdit($id){
    	$product = Products::find($id);
        $cate = Category::All();
        $product_image = Products::find($id)->product_image;
        return view('admin.product.edit',compact('product','cate','product_image'));
    }
    public function postEdit(Request $req, $id){
    	$this->validate($req,
            [
                'txtName'=>'required',
                'txtItem'=>'required',
                'txtType'=>'required',
                'fImage'=>'image',
                'txtPrice'=>'numeric',
                'txtDiscount'=>'numeric',
            ],
            [
                'txtName.required'=>'Chưa nhập tên sản phẩm.',
                'txtItem.required'=>'Chưa nhập item code sản phẩm.',
                'txtType.required'=>'Chưa chọn loại sản phẩm.',
                'fImage.image'=>'Tập tin không đúng định dạng.',
                'txtPrice.numeric'=>'Giá sản phẩm phải là sô.',
                'txtDiscount.numeric'=>'Giảm giá phải là số.',
            ]);
        $product = Products::find($id);
        $product->name = $req->txtName;
        $product->alias = changeTitle($req->txtName);
        $product->item_code = $req->txtItem;
        $product->id_type = $req->txtType;
        $product->price = $req->txtPrice;
        $product->discount_price = $req->txtDiscount;
        $product->detail = $req->txtDetail;
        $product->keyword = $req->txtKeyword;
        $product->description = $req->txtDescription;
        $product->sort_order = $req->txtSort;
        $current_img = 'uploads/product/'.$req->current_image;
        if(!empty($req->hasfile('fImage'))){
            $file = $req->file('fImage');
            $name = $file->getClientOriginalName();
            $fImage =str_random(5).'_'.$name;
            while(file_exists('uploads/product/'.$fImage)){
                $fimage = str_random(5).'_'.$name;
            }
            if(File::exists($current_img)){
                File::delete($current_img);
            }
            $file->move('uploads/product/',$fImage);
            $product->image_link = $fImage;
        }
        $product->save();
        $product_id = $product->id;
        if($req->hasfile('fProductDetail')){
            foreach($req->file('fProductDetail') as $file){
                $product_img = new ProductImage();
                if(isset($file)){
                    $name = $file->getClientOriginalName();
                    $fproductdetail = str_random(5).'_'.$name;
                    while (File::exists('uploads/detail/'.$fproductdetail)) {
                        $fproductdetail = str_random(5).'_'.$name;
                    }
                    $product_img->image = $fproductdetail;
                    $product_img->product_id = $product_id;
                    $file->move('uploads/detail/',$fproductdetail);
                    $product_img->save();
                }
            }
        }
        return redirect()->route('product')->with(["flash_level"=>"success","flash_message"=>"Sửa thành công !"]);
    }
    public function getDelete($id){
    	$product_detail = Products::find($id)->product_image->toArray();
        foreach($product_detail as $file){
            File::delete('uploads/detail/'.$file['image']);
        }
        $product = Products::find($id);
        File::delete('uploads/product/'.$product->image_link);
        $product->delete();
        return redirect()->route('product')->with(["flash_level"=>"success","flash_message"=>"Xóa thành công !"]);
    }
    public function postStatus(Request $req){
        if($req->ajax()){
            $status = Products::find($req->input('id'));
            if($status){
                $status->status = $req->input('status');
                $status->save();
                return 'ok';
            }
        }
    }
    public function getDelimg(Request $req, $id){
        if($req->ajax()){
            $idimg =$req->get('idimg');
            $detail_img = ProductImage::find($idimg);
            if(!empty($detail_img)){
                $img = 'uploads/detail/'.$detail_img->image;
                if(File::exists($img)){
                    File::delete($img);
                }
                $detail_img->delete();
            }
            return "ok";
        }
    }

}

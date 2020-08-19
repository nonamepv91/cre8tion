<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Slide;
use Input, File;

class SlideController extends Controller
{
    //
    public function getList(){
    	$slide = Slide::all();
    	$total = count($slide);
    	return view('admin.slide.list',compact('slide','total'));
    }
    public function getAdd(){
    	return view('admin.slide.add');
    }
    public function postAdd(Request $req){
       
   		$this->validate($req,
   			[
   				'txtName'=>'required',
   				'fImage'=>'required|image',
   				'txtSort'=>'numeric',
   			],
   			[
   				'txtName.required'=>'không được trống',
   				'fImage.required'=>'Chưa chọn hình ảnh',
   				'fImage.image'=>'Tập tin không đúng định dạng',
   				'txtSort.numeric'=>'Phải là số',
   			]);
   		$slide = new Slide();
   		$slide->name = $req->txtName;
   		$slide->link = $req->txtLink;
   		$slide->status = 1;
   		$slide->sort_order = $req->txtSort;
   		if($req->hasfile('fImage')){
   			$file = $req->file('fImage');
   			$name = $file->getClientOriginalName();
   			$fImage = str_random(5).'_'.$name;
   			while(file_exists('uploads/slide/'.$fImage)){
   				$fImage = str_random(5).'_'.$name;
   			}
   			$file->move("uploads/slide/",$fImage);
   			$slide->image_link = $fImage;
   		}

   		$slide->save();
   		return redirect()->route('slide')->with(['flash_level'=>'success','flash_message'=>'Thêm mới thành công !!!']);
    }
    public function getEdit($id){
      $slide = Slide::find($id);
      return view('admin.slide.edit',compact('slide'));
    }
    public function postEdit(Request $req, $id){
      $this->validate($req,
        [
          'txtName'=>'required',
          'image_link'=>'image',
          'txtSort'=>'numeric',
        ],
        [
          'txtName.required'=>'không được trống',
          'fImage.image'=>'Tập tin không đúng định dạng',
          'txtSort.numeric'=>'Phải là số',
        ]);
      $slide = Slide::find($id);
      $slide->name = $req->txtName;
      $slide->link = $req->txtLink;
      $slide->sort_order = $req->txtSort;
      $current_image = 'uploads/slide/'.$req->current_image;
      if($req->hasfile('fImage')){
        $file = $req->file('fImage');
        $name = $file->getClientOriginalName();
        $fImage = str_random(5).'_'.$name;
        while (file_exists('uploads/slide/'.$fImage)) {
          $fImage = str_random(5).'_'.$name;
        }
        $file->move('uploads/slide/',$fImage);
        $slide->image_link = $fImage;
        if(File::exists($current_image)){
          File::delete($current_image);
        }
      }
      $slide->save();
      return redirect()->route('slide')->with(['flash_level'=>'success','flash_message'=>'Sửa thành công !!!']);
    }
    public function getDelete($id){
      $slide = Slide::find($id);
      $fImage = 'uploads/slide/'.$slide->image_link;
      if(File::exists($fImage)){
        File::delete($fImage);
      }
      $slide->delete();
      return redirect()->route('slide')->with(['flash_level'=>'success','flash_message'=>'Xóa thành công !!!']);
    }
    public function postStatus(Request $req){
    	if($req->ajax()){
            $status = Slide::find($req->input('id'));
            if($status){
                $status->status = $req->input('status');
                $status->save();
                return 'ok';
            }
        }
    }
}

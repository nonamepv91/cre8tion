<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\About;

class AboutController extends Controller
{
    public function getAbout(){
    	$about = About::first();
    	return view('admin.about.index',['about'=>$about]);
    }
    public function postAbout(Request $req, $id){
    	$about = About::find($id);
    	
    	$about->title_vi = $req->title_vi;
    	$about->title_en = $req->title_en;
    	$about->content_vi = $req->content_vi;
    	$about->content_en = $req->content_en;
    	$about->save();
    	return redirect()->route('adminabout')->with(['flash_level'=>'success','flash_message'=>'thành công']);

    }
}

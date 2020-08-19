<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Config;
use Input, File;

class ConfigController extends Controller
{
    //
    public function getConfig(){
    	$config = Config::first();
    	return view('admin.config.index',['config'=>$config]);
    }
    public function postConfig(Request $req, $id){
    	$config = Config::find($id);
    	$this->validate($req,
    		[
    			'logo'=>'image',
    		],
    		[
    			'logo.image'=>'không đúng định dạng hình ảnh',
    		]);
    	$config->title = $req->title;
    	$config->company = $req->company;
    	$config->hotline = $req->hotline;
    	$config->phone = $req->phone;
    	$config->email = $req->email;
    	$config->content = $req->content;
    	$config->keyword = $req->keyword;
    	$config->description = $req->description;
    	$config->fanpage = $req->fanpage;
    	$config->boxchat = $req->boxchat;
        $current_logo = 'assets/images'.$req->current_logo;
        $current_favicon = 'assets/images/'.$req->current_favicon;

    	if($req->hasfile('logo')){
    		$file = $req->file('logo');
    		$name = $file->getClientOriginalName();
    		$logo = str_random(5)."_".$name;
    		while(file_exists("assets/images".$logo)){
    			$logo = str_random(5)."_".$name;
    		}
    		$file->move("assets/images",$logo);
    		$config->logo = $logo;
            if(File::exists($current_logo));{
                File::delete($current_logo);
            }
    	}
    	if($req->hasfile('favicon')){
    		$file = $req->file('favicon');
    		$duoi = $file->getClientOriginalExtension();
    		if($duoi != 'ico'){
    			return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Tập tin không đúng định dang!!!']);
    		}
    		
    		$name = $file->getClientOriginalName();
    		$favicon = str_random(5)."_".$name;
    		while(file_exists("assets/images".$favicon)){
    			$favicon = str_random(5)."_".$name;
    		}
    		$file->move("assets/images",$favicon);
    		$config->favicon = $favicon;
            if(File::exists($current_favicon)){
                File::delete($current_favicon);
            }
    	}
    	$config->save();
    	return redirect()->route('config')->with(['flash_level'=>'success','flash_message'=>'Cài đặt thành công']);

    }
}

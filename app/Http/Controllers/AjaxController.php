<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;
use App\ProductType;

class AjaxController extends Controller
{
    public function getHome($id){
    		$showhome = Products::where('id_type',$id)->get();

    	foreach($showhome as $item){
		echo	'<li class="col-sm-2">';
		echo	'<div class="left-block">';
		echo	'<a href='.$item->id.'>';
		echo	'<img class="img-responsive" alt="product" src="uploads/product/'.$item->image_link.'" /></a>';
		echo	'<div class="add-to-cart">';
		echo	'<a title="Add to Cart" href='.$item->id.'>Mua hàng</a>';
		echo	'</div>';
		echo	'</div>';
		echo	'<div class="right-block">';
		echo	'<h5 class="product-name"><a href="">'.$item->name.'</a></h5>';
		echo	'<div class="content_price">';
		echo	'<span class="price product-price">'.$item->price.' VNĐ</span>';
		echo	'</div>';
		echo	'</div>';
		echo	'</li>';
    	}
    }
}

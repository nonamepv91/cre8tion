<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    //
    protected $table = "products";

    public function product_type()
    {
    	return $this->belongsTo('App\ProductType', 'id_type', 'id');
    }
    public function product_image(){
    	return $this->hasMany('App\ProductImage', 'product_id', 'id');
    }
}

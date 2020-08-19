<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    //
    protected $table = "categories";

     public function product_type()
    {
    	return $this->hasMany('App\ProductType', 'id_cat', 'id');
    }

    public function product()
    {
    	return $this->hasmanyThrough('App\Products', 'App\ProductType', 'id_type', 'id_cat', 'id');
    }
}

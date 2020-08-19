<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductType extends Model
{
    //
    protected $table = "product_type";

    public function product()
    {
    	return $this->hasMany('App\Products', 'id_type', 'id');
    }
    public function category()
    {
    	return $this->belongsTo('App\Category', 'id_cat', 'id');
    }
}

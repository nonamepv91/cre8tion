<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
    //
    protected $table = 'orders';

    public function order_detail(){
    	return $this->hasMany('App\OrderDetail','order_id','id');
    }

    public function customer(){
    	return $this->belongsTo('App\Customer','customer_id','id');
    }
}

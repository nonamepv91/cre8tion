<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('cre_admin',['as'=>'login','uses'=>'Auth\LoginController@getLogin']);
Route::post('cre_admin',['as'=>'login','uses'=>'Auth\LoginController@postLogin']);
Route::get('logout',['as'=>'adminlogout','uses'=>'UserController@getLogout']);
/*** ========= ***ADMIN**** ========= ***/
Route::group(['prefix'=>'admin', 'middleware'=>'AdminLogin'],function() {
	Route::get('dashboard',['as'=>'dashboard','uses'=>'DashboardController@Dashboard']);

	Route::group(['prefix'=>'config'], function(){
			Route::get('config',['as'=>'config','uses'=>'ConfigController@getConfig']);
			Route::post('addconfig/{id}',['as'=>'addconfig','uses'=>'ConfigController@postConfig']);
	});
	Route::group(['prefix'=>'about'], function(){
			Route::get('about',['as'=>'adminabout','uses'=>'AboutController@getAbout']);
			Route::post('addabout/{id}',['as'=>'addabout','uses'=>'AboutController@postAbout']);
	});
	Route::group(['prefix'=>'slide'], function(){
			Route::get('list',['as'=>'slide','uses'=>'SlideController@getList']);
			Route::get('add',['as'=>'slide.getadd','uses'=>'SlideController@getAdd']);
			Route::post('add',['as'=>'slide.postadd','uses'=>'SlideController@postAdd']);
			Route::get('edit/{id}',['as'=>'slide.getedit','uses'=>'SlideController@getEdit']);
			Route::post('edit/{id}',['as'=>'slide.postedit','uses'=>'SlideController@postEdit']);
			Route::get('delete/{id}',['as'=>'slide.delete','uses'=>'SlideController@getDelete']);
			Route::post('status',['as'=>'status','uses'=>'SlideController@postStatus']);
	});
	Route::group(['prefix'=>'banner'], function(){
			Route::get('list',['as'=>'banner','uses'=>'BannerController@getList']);
			Route::get('add',['as'=>'banner.getadd','uses'=>'BannerController@getAdd']);
			Route::post('add',['as'=>'banner.postadd','uses'=>'BannerController@postAdd']);
			Route::get('edit/{id}',['as'=>'banner.getedit','uses'=>'BannerController@getEdit']);
			Route::post('edit/{id}',['as'=>'banner.postedit','uses'=>'BannerController@postEdit']);
			Route::get('delete/{id}',['as'=>'banner.delete','uses'=>'BannerController@getDelete']);
			Route::post('status',['as'=>'status','uses'=>'BannerController@postStatus']);
	});
	Route::group(['prefix'=>'cate'], function(){
			Route::get('list',['as'=>'category','uses'=>'CategoryController@getList']);
			Route::get('add',['as'=>'cate.getadd','uses'=>'CategoryController@getAdd']);
			Route::post('add',['as'=>'cate.postadd','uses'=>'CategoryController@postAdd']);
			Route::get('edit/{id}',['as'=>'cate.getedit','uses'=>'CategoryController@getEdit']);
			Route::post('edit/{id}',['as'=>'cate.postedit','uses'=>'CategoryController@postEdit']);
			Route::get('delete/{id}',['as'=>'cate.delete','uses'=>'CategoryController@getDelete']);
			Route::post('status',['as'=>'status','uses'=>'CategoryController@postStatus']);
	});
	Route::group(['prefix'=>'protype'], function(){
			Route::get('list',['as'=>'product-type','uses'=>'ProTypeController@getList']);
			Route::get('add',['as'=>'protype.getadd','uses'=>'ProTypeController@getAdd']);
			Route::post('add',['as'=>'protype.postadd','uses'=>'ProTypeController@postAdd']);
			Route::get('edit/{id}',['as'=>'protype.getedit','uses'=>'ProTypeController@getEdit']);
			Route::post('edit/{id}',['as'=>'protype.postedit','uses'=>'ProTypeController@postEdit']);
			Route::get('delete/{id}',['as'=>'protype.delete','uses'=>'ProTypeController@getDelete']);
			Route::post('status',['as'=>'status','uses'=>'ProTypeController@postStatus']);
			Route::post('pronew',['as'=>'pronew','uses'=>'ProTypeController@postPronew']);
	});
	Route::group(['prefix'=>'product'], function(){
			Route::get('list',['as'=>'product','uses'=>'ProductController@getList']);
			Route::get('add',['as'=>'product.getadd','uses'=>'ProductController@getAdd']);
			Route::post('add',['as'=>'product.postadd','uses'=>'ProductController@postAdd']);
			Route::get('edit/{id}',['as'=>'product.getedit','uses'=>'ProductController@getEdit']);
			Route::post('edit/{id}',['as'=>'product.postedit','uses'=>'ProductController@postEdit']);
			Route::get('delete/{id}',['as'=>'product.delete','uses'=>'ProductController@getDelete']);
			Route::post('status',['as'=>'status','uses'=>'ProductController@postStatus']);
			Route::get('delimg/{id}',['as'=>'delimg','uses'=>'ProductController@getDelimg']);
	});
	Route::group(['prefix'=>'bill'], function(){
			Route::get('listorder',['as'=>'order','uses'=>'BillController@getListOrder']);
			Route::get('listcustomer',['as'=>'customer','uses'=>'BillController@getListCustomer']);
			Route::get('add',['as'=>'bill.getadd','uses'=>'BillController@getAdd']);
			Route::post('add',['as'=>'bill.postadd','uses'=>'BillController@postAdd']);
			Route::get('editorder/{id}',['as'=>'order.getedit','uses'=>'BillController@getEditOrder']);
			Route::post('editorder/{id}',['as'=>'order.postedit','uses'=>'BillController@postEditOrder']);
			Route::get('deleteorder/{id}',['as'=>'order.delete','uses'=>'BillController@getDeleteOrder']);
			Route::get('editcustomer/{id}',['as'=>'customer.getedit','uses'=>'BillController@getEditCustomer']);
			Route::post('editcustomer/{id}',['as'=>'customer.postedit','uses'=>'BillController@postEditCustomer']);
			Route::get('deletecustomer/{id}',['as'=>'customer.delete','uses'=>'BillController@getDeleteCustomer']);
			Route::get('detail/{id}',['as'=>'bill.detail','uses'=>'BillController@getDetail']);
			Route::post('status',['as'=>'status','uses'=>'BillController@postStatus']);
			Route::get('delimg/{id}',['as'=>'delimg','uses'=>'BillController@getDelimg']);
			Route::get('export/{id}','BillController@Export');
	});
	Route::group(['prefix'=>'user','middleware'=>'AccessLevel'], function(){
			Route::get('list',['as'=>'user','uses'=>'UserController@getList']);
			Route::get('add',['as'=>'user.getadd','uses'=>'UserController@getAdd']);
			Route::post('add',['as'=>'user.postadd','uses'=>'UserController@postAdd']);
			Route::get('edit/{id}',['as'=>'user.getedit','uses'=>'UserController@getEdit']);
			Route::post('edit/{id}',['as'=>'user.postedit','uses'=>'UserController@postEdit']);
			Route::get('delete/{id}',['as'=>'user.delete','uses'=>'UserController@getDelete']);
			Route::post('status',['as'=>'status','uses'=>'UserController@postStatus']);
	});
	

});
Route::group(['prefix'=>'ajax'],function(){
		Route::get('showhome/{id}','AjaxController@getHome');
	});
/*** ========= ***USER**** ========= ***/
Route::get('language/{locale}','PageController@getLanguage');
Route::get('/', ['as' => 'home-page', 'uses' => 'PageController@getIndex']);
Route::post('search', ['as' => 'search', 'uses' => 'PageController@postSearch']);
Route::get('promotion', ['as' => 'promotion', 'uses' => 'PageController@getPromotion']);
Route::get('{id}-{cat}/{name}.html',['as' => 'products', 'uses' => 'PageController@Products']);
Route::get('{id}/{name}.html',['as' => 'product-detail', 'uses' => 'PageController@Product_detail']);
Route::get('about', ['as' => 'about', 'uses' => 'PageController@getAbout']);
Route::get('contact', ['as' => 'contact', 'uses' => 'PageController@getContact']);
Route::post('contact', ['as' => 'addcontact', 'uses' => 'PageController@postContact']);

/*** ========= ***CART**** ========= ***/
Route::get('add-to-cart/{id}',['as'=>'addcart', 'uses'=>'PageController@getAddtoCart']);
Route::get('cart',['as'=>'cart','uses'=>'PageController@getCart']);
Route::get('checkout',['as'=>'checkout','uses'=>'PageController@getCheckout']);
Route::post('checkout',['as'=>'checkout','uses'=>'PageController@postCheckout']);
Route::get('delcart/{id}',['as'=>'delcart','uses'=>'PageController@getDelCart']);
Route::get('cap-nhat/{id}/{qty}',['as'=>'capnhat','uses'=>'PageController@getCapnhat']);

/*** ========= ***LOGIN**** ========= ***/
Route::get('login',['as' => 'getlogin', 'uses' => 'PageController@getLogin']);
Route::post('login',['as' => 'postlogin', 'uses' => 'PageController@postLogin']);
/*Route::post('login',['as'=>'loginmember','uses'=>'Auth\LoginController@LoginMember']);*/
Route::post('register',['as' => 'postregister', 'uses' => 'PageController@postRegister']);




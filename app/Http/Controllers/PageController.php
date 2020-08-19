<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Slide;
use App\Banners;
use App\ProductType;
use App\Products;
use App\Category;
use App\User;
use Session;
use App;
use DB;
use App\Video;
use App\Customer;
use App\Orders;
use App\OrderDetail;
use Mail;
use Cart;
use App\Contact;
use App\Config;
use App\About;
use App\Account;
use Input;

use Illuminate\Support\Facades\Auth;

class PageController extends Controller
{
    //
    function __construct()
    {
    	$category = Category::where('status', 1)->orderBy('sort_order','ASC')->get();
    	view()->share('category',$category);
    	$brandlogo = Banners::where('location',4)->get();
    	view()->share('brandlogo',$brandlogo);
    	$slide = Slide::where('status','1')->orderBy('sort_order','desc')->get();
    	view()->share('slide',$slide);
        $config = Config::All()->first();
        view()->share('config',$config);
        $protype = ProductType::All();
        view()->share('protype',$protype);
    }
    public function getLanguage($locale)
    {
        Session::put('locale', $locale);
        return redirect()->back();
    }
    public function pagenotfound()
    {
        return view('errors.503');
    }
   
    public function getIndex()
    {
       if (Session::has('locale')) {
        App::setLocale(Session::get('locale'));
    }
    	$topimg = Banners::where('location', 1)->orderBy(DB::raw('RAND()'))->take(4)->get();
    	$tab1 = ProductType::where('id_cat', 17)->where('status', 1)->orderBy('sort_order','desc')->take(8)->get();
        $tab2 = ProductType::where('id_cat', 18)->where('status', 1)->orderBy('sort_order','desc')->take(6)->get();
    	$gel1 = Products::where('id_type',21)->take(6)->get();
        $gel2 = Products::where('id_type',16)->take(6)->get();
        $gel3 = Products::where('id_type',23)->take(6)->get();
        $gel4 = Products::where('id_type',35)->take(6)->get();
        $gel5 = Products::where('id_type',36)->take(6)->get();
        $gel6 = Products::where('id_type',15)->take(6)->get();
        $gel7 = Products::where('id_type',28)->take(6)->get();
        $gel8 = Products::where('id_type',20)->take(6)->get();

        $dip1 = Products::where('id_type',32)->take(6)->get();
        $dip2 = Products::where('id_type',29)->take(6)->get();
        $dip3 = Products::where('id_type',40)->take(6)->get();
        $dip4 = Products::where('id_type',41)->take(6)->get();
        $dip5 = Products::where('id_type',63)->take(6)->get();
       

        $led = Products::where('id_type',43)->get();
        $foamdisplays = Products::where('id_type',61)->take(12)->get();
    	$idtype = ProductType::where('new_product', 1)->first();
    	$brandlogo = Banners::where('location',4)->get();
    	$newproduct = Products::where('id_type',27)->paginate(12);
    	return view('user.pages.home',['topimg'=>$topimg, 'tab1'=>$tab1,'tab2'=>$tab2,'gel1'=>$gel1,'gel2'=>$gel2,'gel3'=>$gel3,'gel4'=>$gel4,'gel5'=>$gel5,'gel6'=>$gel6,'gel7'=>$gel7,'gel8'=>$gel8,'newproduct'=>$newproduct,'idtype'=>$idtype,'dip1'=>$dip1,'dip2'=>$dip2,'dip3'=>$dip3,'dip4'=>$dip4,'dip5'=>$dip5,'led'=>$led,'foamdisplays'=>$foamdisplays]);
    }

    public function Products($id)
    {
        if (Session::has('locale')) {
        App::setLocale(Session::get('locale'));
    }

    	$product_type =ProductType::find($id);
        $cat = ProductType::where('id_cat',$product_type->id_cat)->get();
    	$product = Products::where('id_type',$id)->paginate(20);
    	return view('user.pages.product',['product'=>$product,'product_type'=>$product_type,'cat'=>$cat]);
    }
    public function Product_detail($id)
    {
        $product_detail = Products::find($id);
        $product_type =ProductType::find($product_detail->id_type);
        $cat = ProductType::where('id_cat',$product_type->id_cat)->get();
        $pronew = Products::where('id_type',15)->take(4)->get();
        $proorder = Products::where('id','<>',$product_detail->id)->where('price', '<>' , 0)->orderBy(DB::raw('RAND()'))->take(3)->get();
        $pro_related =Products::where('id_type',$product_detail->id_type)->where('price', '<>' , 0)->where('id','<>',$product_detail->id)->get();
        return view('user.pages.product_detail',['product_detail'=>$product_detail,'cat'=>$cat,'pro_related'=> $pro_related, 'pronew'=>$pronew, 'proorder'=>$proorder]);
    }
    public function postSearch(Request $req)
    {
       if (Session::has('locale')) {
        App::setLocale(Session::get('locale'));
        }
    	$keyword = $req->keyword;
    	if($keyword)
    	{
    	     $product = Products::where('name','like','%'.$keyword.'%')->orWhere('item_code','like','%'.$keyword.'%')->paginate(50);
    	return view('user.pages.search',['product'=>$product]);
    	}
    	else{
    	    return redirect('/');
    	}
    	
    }
    public function getAbout()
    {
        if (Session::has('locale')) {
        App::setLocale(Session::get('locale'));
        }
        $title = 'title_'. App::getLocale();
        $content = 'content_'. App::getLocale();
        $about = About::all()->first();
        return view('user.pages.about',compact('about'));
    }
    public function getContact()
    {
        if (Session::has('locale')) {
        App::setLocale(Session::get('locale'));
        }
        /*$contact = Info::where('page','lienhe')->first();*/
        return view('user.pages.contact');
    }
    public function postContact(Request $req)
    {
        $contact = new Contact;
        $contact->name = $req->name;
        $contact->email = $req->email;
        $contact->phone = $req->phone;
        $contact->content = $req->content;
        $contact->save();
        return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Gửi thành công.']);
    }
    public function Image()
    {
        if (Session::has('locale')) {
        App::setLocale(Session::get('locale'));
        }
        return view('pages.image');
    }
    public function Video()
    {
        if (Session::has('locale')) {
        App::setLocale(Session::get('locale'));
        }
        $video = Video::all();
        return view('pages.video',['video'=>$video]);
    }
    public function getPromotion()
    {
        if (Session::has('locale')) {
        App::setLocale(Session::get('locale'));
        }
        
        return view('user.pages.promotion');
    }
    public function Privacy()
    {
         if (Session::has('locale')) {
        App::setLocale(Session::get('locale'));
    }
    $title = 'title_'. App::getLocale();
    $content = 'content_'. App::getLocale();
        $privacy = Info::where('page','chinhsachbaomat')->first();
        return view('pages.privacy',['privacy'=>$privacy,'title' => $title,
        'content' => $content]);
    }
    public function Pshopping()
    {
         if (Session::has('locale')) {
        App::setLocale(Session::get('locale'));
    }
    $title = 'title_'. App::getLocale();
    $content = 'content_'. App::getLocale();
        $pshopping = Info::where('page','chinhsachmuahang')->first();
        return view('pages.pshopping',['pshopping'=>$pshopping,'title' => $title,
        'content' => $content]);
    }
/* ================= BEGIN CART =============== */
    public function getAddtoCart($id){
        $product_buy = Products::where('id',$id)->first();

        Cart::add(array('id'=>$id,'name'=>$product_buy->name,'qty'=>1,'price'=>$product_buy->price,'options'=>['img'=>$product_buy->image_link,'item_code'=>$product_buy->item_code]));
        $content = Cart::content();
        
        return redirect()->back();
    }
    public function getCart(){
       return view('user.pages.cart');
    }

    public function getCheckout(){
        return view('user.pages.checkout');
    }
    public function postCheckout(Request $req){
        
        $this->validate($req,
            [
                'name' =>'required',
                'phone'=>'required',
                'email'=>'required',
                'address'=>'required'
            ],
            [
                'name.required'=>'Bạn chưa nhập họ tên',
                'phone.required'=>'Bạn chưa nhập điện thoại',
                'email.required'=>'Bạn chưa nhập email',
                'address.required'=>'Bạn chưa nhập địa chỉ'
            ]);
       
        
        $customer = new Customer;
        $customer->name = $req->name;
        $customer->phone = $req->phone;
        $customer->email = $req->email;
        $customer->address = $req->address;
        $customer->note = $req->note;
        $customer->save();

        $order = new Orders;
        $total = Cart::subtotal(0,',','');
        $order->customer_id = $customer->id;
        $order->date_order = date('Y-m-d');
        $order->total = $total;
        $order->order_code = rand(1000000000,3000000000);
        $order->quantity = Cart::count();
        $order->status = 1;
        $order->payment = $req->payment_method;
        $order->save();

        foreach(Cart::content() as $key => $value)
        {
            $order_detail = new OrderDetail;
            $order_detail->order_id = $order->id;
            $order_detail->product_id = $key;
            $order_detail->product_name = $value->name;
            $order_detail->item_code = $value->options->item_code;
            $order_detail->quantity = $value->qty;
            $order_detail->price = ($value->price);
            $order_detail->totalprice = ($value->price*$value->qty);
            $order_detail->save();
        }
        
        Cart::destroy();
        return redirect()->route('cart')->with('thongbao','Đặt hàng thành công');
        die;
         $data = ['name'=>$req->name,'phone'=>$req->phone,'email'=>$req->email,'address'=>$req->address];
        $email = $req->email;
        Mail::send('pages.blank', $data,function($message) use ($email){
             $message->from('pvcuong@haimi.vn', 'Cre8tion');
            $message->to($email, 'Cre8tion')->subject('Đơn hàng của bạn');
        });
    }
    public function getCapnhat(Request $req){
        if($req->ajax()){
           $id = $req->get('id');
          $qty = $req->get('qty');
          Cart::update($id,$qty);
        echo "oke";
        }
    }
    public function getDelCart($id){

        Cart::remove($id);
        return redirect()->back();
    }
/* ================= END CART =============== */
/* ================= BEGIN LOGIN =============== */
    public function postRegister(Request $req){
        /*$this->validate($req,
            [
                'name'=>'min:6|max:50',
                'email'=>'unique:users,email',
                'password'=>'required|min:6|max:32',
                're_password'=>'same:password',
            ],
            [
                'email.unique'=>'Email đã có người sử dụng',
                'password.min'=>'Mật khẩu ít nhất 6 kí tự',
                'password.min'=>'Mật khẩu tối đa 32 kí tự',
                're_password.same'=>'Mật khẩu không giống nhau',
            ]);*/
        $user = new Account();
        $user->name = $req->name;
        $user->email = $req->newemail;
        $user->password = bcrypt($req->newpwd);
        $user->status = 1;
        $user->remember_token = $req->_token;
        $user->save();
        return redirect()->back()->with('thongbao','Tạo tài khoản thành công');
    }
    public function getLogin()
    {
        return view('user.pages.login');
    }
   public function postLogin(Request $req)
    {
        $this->validate($req,
        [
            'email'=>'email',
            'password'=>'min:6|max:32'
        ],
        [
            'email.email'=>'Email hoạc mật khâu không chính xác',
            'password.min'=>'Email hoạc mật khâu không chính xác',
            'password.max'=>'Email hoạc mật khâu không chính xác'
        ]);
        $credentials = array('email'=>$req->email,'password'=>$req->password);
        $user = User::where([['email','=',$req->email],['status','=', '1']])->first();
        
        if($user)
        {
            if(Auth::attempt($credentials))
            {
                return redirect('/');
            }
            else
            {
                return redirect()->back()->with('thongbao','Đăng nhập thất bại');
            }
        }
        else
        {
            return redirect()->back()->with('thongbao','Tài khoản không tồn tại');
        }
    }
   /* public function Logout()
    {
        Auth::logout();
        return redirect('/');
    }*/
/* ================= END LOGIN =============== */
}

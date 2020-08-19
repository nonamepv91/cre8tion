<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\Account;
use Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

     public function getLogin()
    {
        if(Auth::check()){
            return redirect('/');
        }else{
            return view('admin.login');
        }
    }
    public function postLogin(Request $req)
    {
        $this->validate($req,
        [
            'email'=>'required',
            'password'=>'required|min:3|max:32'
        ],
        [
            'email.required'=>'email không được trống',
            'password.required'=>'mật khẩu không được trống',
            'password.min'=>'mật khẩu có độ dài tối thiểu 3 ký tự',
            'password.max'=>'mật khẩu có độ dài tối đa 32 ký tự'
        ]);
        if(auth::attempt(['email'=>$req->email,'password'=>$req->password]))
        {
            return redirect()->route('dashboard');
        }
        else
        {
            return redirect('cre_admin');
        }
    }
    public function getLogout()
    {
        Auth::logout();
        return redirect('cre_admin');
    }


    public function LoginMember(Request $req)
    {
        if(auth::attempt(['email'=>$req->email,'password'=>$req->password]))
        {
            return redirect()->route('/');
        }
    }

}

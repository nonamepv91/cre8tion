<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;


use Closure;

class AdminLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::check())
        {
            $user = Auth::user();
            if($user->access_level == 0 || $user->access_level == 1)
            {
                return $next($request);
            }
            else
            {
                return redirect('cre_admin');
            }
        }
        else
        {
            return redirect('cre_admin');
        }
    }

}

<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;

use Closure;

class AccessLevel
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
            if($user->access_level == 0)
            {
                return $next($request);
            }
            else
            {
                return redirect()->route('dashboard')->with(['flash_level'=>'danger','flash_message'=>'Không có quyền truy cập.']);
            }
        }
    }
}

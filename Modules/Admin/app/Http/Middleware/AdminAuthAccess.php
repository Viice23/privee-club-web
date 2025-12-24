<?php

namespace Modules\Admin\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminAuthAccess
{
    /**
     * Handle an incoming request.
     */
    public function handle(Request $request, Closure $next)
    {
      
        if (!Auth::guard('admin')->check()) {
            return redirect('administrator');
        }
        
        return $next($request);
    }
}

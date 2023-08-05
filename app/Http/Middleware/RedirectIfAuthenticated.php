<?php

namespace App\Http\Middleware;

use App\Providers\RouteServiceProvider;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class RedirectIfAuthenticated
{

    // Menambahkan property $redirects untuk mapping route berdasarkan role_id
    protected $redirects = [
        1 => RouteServiceProvider::HOME,
        0 => 'dashboard-user',
    ];

    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next, string ...$guards): Response
    {
        $guards = empty($guards) ? [null] : $guards;

        foreach ($guards as $guard) {
            if (Auth::guard($guard)->check()) {

                // Menambahkan role_id dari user yang terautentikasi
                $roleId = Auth::guard($guard)->user()->role_id;
                $redirect = $this->redirects[$roleId] ?? RouteServiceProvider::HOME;
                return redirect($redirect);
            }
        }

        return $next($request);
    }
}

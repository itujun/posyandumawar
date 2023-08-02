<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = [
            'title' => 'Login'
        ];
        return view('auth.login', $data);
    }

    public function masuk(Request $request)
    {
        $credentials =  $request->validate([
            'email' => 'required|email:dns',
            'password' => 'required|min:6'
        ], [
            'email.required' => 'Kolom Email harus diisi',
            'password.required' => 'Kolom Password harus diisi',
            'password.min' => 'Kolom Password minimal berisi 6 karakter',
            'email.email' => 'Kolom Email harus berisi email valid (contoh@gmail.com)'
        ]);

        if (!User::where('email', $credentials['email'])->exists()) {
            return back()->with('gagal', 'Email tidak terdaftar! Silahkan coba lagi.');
        }
        if (!Auth::attempt($credentials)) {
            return back()->with('gagal', 'Password salah! Silahkan coba lagi.');
        }
        $request->session()->regenerate();
        $user = User::where('email', $credentials['email'])->first();
        return redirect()->intended('dashboard')->with('sukses', 'Selamat datang ' . $user->nama);
    }

    public function keluar(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/')->with('sukses', 'Berhasil keluar dari akun!');
    }
}

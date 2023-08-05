<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BalitaController;
use App\Http\Controllers\DatasetController;
use App\Http\Controllers\UkurBalitaController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [AuthController::class, 'index'])->middleware('guest')->name('login');
Route::post('/masuk', [AuthController::class, 'masuk'])->middleware('guest');
Route::post('/keluar', [AuthController::class, 'keluar'])->middleware('auth');

Route::get('/dashboard', [AdminController::class, 'index'])->middleware('isAdmin');
Route::get('/dashboard-user', [UserController::class, 'index'])->middleware('auth');

Route::resource('/balita', BalitaController::class)->middleware('isAdmin');
Route::resource('/dataset', DatasetController::class)->middleware('isAdmin');
Route::resource('/ukur-balita', UkurBalitaController::class)->middleware('isAdmin');

Route::post('/hitungusia', [UkurBalitaController::class, 'hitungusia'])->name('hitungusia')->middleware('isAdmin');
Route::post('/getjk', [UkurBalitaController::class, 'getJenisKelamin'])->name('getjk')->middleware('isAdmin');
Route::get('/cek-cuy', [DatasetController::class, 'cekUlang'])->middleware('auth');
Route::get('/cekin', [UkurBalitaController::class, 'cekUlang'])->middleware('auth');

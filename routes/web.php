<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BalitaController;
use App\Http\Controllers\DatasetController;
use App\Http\Controllers\UkurBalitaController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\KnnController;
use App\Models\UkurBalita;
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

Route::get('/dashboard', [DashboardController::class, 'index'])->middleware('auth');

Route::resource('/balita', BalitaController::class)->middleware('auth');
Route::resource('/dataset', DatasetController::class)->middleware('auth');
Route::resource('/ukur-balita', UkurBalitaController::class)->middleware('auth');

Route::post('/hitungusia', [UkurBalitaController::class, 'hitungusia'])->name('hitungusia')->middleware('auth');
Route::post('/getjk', [UkurBalitaController::class, 'getJenisKelamin'])->name('getjk')->middleware('auth');
Route::get('/cek-cuy', [DatasetController::class, 'cekUlang'])->middleware('auth');

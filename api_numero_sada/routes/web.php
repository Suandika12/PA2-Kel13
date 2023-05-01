<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\LapanganController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\CreditController;
use App\Http\Controllers\BookingLapanganController;
use App\Http\Controllers\EventController;
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
// redirect to login page
Route::get('/', function () {
    return redirect()->route('login');
});
Route::get('/login', [AuthController::class, 'index'])->name('login');
Route::post('/login', [AuthController::class, 'do_login'])->name('login');
Route::group(['middleware' => ['role:admin']], function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    // Credits
    Route::resource('credits', CreditController::class);

    // Products
    Route::resource('products', ProductController::class);

    // lapangan
    Route::resource('lapangan', LapanganController::class);

    // Orders
    Route::get('/orders', [OrderController::class, 'index'])->name('orders.index');
    Route::get('/orders/{id}', [OrderController::class, 'show'])->name('orders.show');
    Route::post('/orders/{id}/process', [OrderController::class, 'process'])->name('orders.process');
    Route::post('/orders/{id}/deny', [OrderController::class, 'deny'])->name('orders.deny');
    Route::delete('/orders/{id}', [OrderController::class, 'destroy'])->name('orders.destroy');


    // booking lapangan
    Route::get('/booking-lapangan', [BookingLapanganController::class, 'index'])->name('booking-lapangan.index');
    Route::get('/booking-lapangan/{id}', [BookingLapanganController::class, 'show'])->name('booking-lapangan.show');
    Route::get('/booking-lapangan/{id}/approve', [BookingLapanganController::class, 'approve'])->name('booking-lapangan.approve');
    Route::get('/booking-lapangan/{id}/reject', [BookingLapanganController::class, 'reject'])->name('booking-lapangan.reject');

    //Event
    Route::get('/event', [EventController::class, 'index'])->name('event.index');
    Route::post('/add_event', [EventController::class, 'store'])->name('add_event');
    Route::patch('/update_event/{id}', [EventController::class, 'update'])->name('update_event');
    Route::delete('/delete_event/{id}', [EventController::class, 'destroy'])->name('delete_event');


    Route::get('/logout', [AuthController::class, 'do_logout'])->name('logout');
});

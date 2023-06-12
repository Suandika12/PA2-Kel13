<?php


use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\CartController;
use App\Http\Controllers\API\LapanganController;
use App\Http\Controllers\API\OrderController;
use App\Http\Controllers\API\CreditController;
use App\Http\Controllers\API\ProductController;
use App\Http\Controllers\API\BookingLapanganController;
use App\Http\Controllers\API\EventController;
use App\Http\Resources\Credit\CreditCollection;
use App\Models\Event;
use App\Models\Lapangan;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Auth Routes
Route::group([
    'prefix' => 'auth'
], function () {
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/register', [AuthController::class, 'register']);
    Route::post('/forgot-password', [AuthController::class, 'forgotPassword']);
    Route::post('/reset-password', [AuthController::class, 'resetPassword']);
    Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth:sanctum');
    Route::post('/refresh', [AuthController::class, 'refresh']);
    Route::get('/user-profile', [AuthController::class, 'userProfile']);
    Route::post('/{provider}', [AuthController::class, 'requestTokenProvider']);
});

// Product Routes
Route::group([
    'middleware' => 'auth:sanctum',
    'prefix' => 'products'
], function () {
    Route::get('/', [ProductController::class, 'index']);
    Route::get('/{id}', [ProductController::class, 'show']);
});

// Credits Routes
Route::group([
    'middleware' => 'auth:sanctum',
    'prefix' => 'credits'
], function () {
    Route::get('/', [CreditController::class, 'index']);
    Route::get('/{id}', [CreditController::class, 'show']);
    Route::post('/checkout', [CreditController::class, 'checkout']);
});

// Lapangan Routes
Route::group([
    'middleware' => 'auth:sanctum',
    'prefix' => 'lapangan'
], function () {
    Route::get('/', [LapanganController::class, 'index']);
    Route::get('/{id}', [LapanganController::class, 'show']);
});

// Cart Routes
Route::group([
    'middleware' => 'auth:sanctum',
    'prefix' => 'cart'
], function () {
    Route::get('/', [CartController::class, 'index']);
    Route::post('/store', [CartController::class, 'store']);
    Route::put('/increase/{id}', [CartController::class, 'increase']);
    Route::put('/decrease/{id}', [CartController::class, 'decrease']);
    Route::delete('/delete/{id}', [CartController::class, 'destroy']);
});

// Order Routes
Route::group([
    'middleware' => 'auth:sanctum',
    'prefix' => 'orders'
], function () {
    Route::get('/', [OrderController::class, 'index']);
    Route::get('/{id}', [OrderController::class, 'show']);
    Route::put('/cancel/{id}', [OrderController::class, 'cancel']);
});
// Checkout Routes
Route::group([
    'middleware' => 'auth:sanctum',
    'prefix' => 'checkout'
], function () {
    Route::post('/', [OrderController::class, 'store']);
});

// Request Lapangan Routes
Route::group([
    'middleware' => 'auth:sanctum',
    'prefix' => 'booking-lapapangans'
], function () {
    Route::get('/', [BookingLapanganController::class, 'index']);
    Route::get('/{id}', [BookingLapanganController::class, 'show']);
    Route::post('/store', [BookingLapanganController::class, 'store']);
    Route::put('/cancel/{id}', [BookingLapanganController::class, 'cancel']);
});

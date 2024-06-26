<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Listing;
use App\Http\Controllers\ListingController;
use App\Http\Controllers\UserController;


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

//Listings
Route::get('/', [ListingController::class, 'index']); //all listings

Route::get('/listings/create', [ListingController::class, 'create'])
  ->middleware('auth'); 

Route::post('/listings', [ListingController::class, 'store'])->middleware('auth');

Route::get('/listings/{listing}/edit', [ListingController::class, 'edit'])
  ->middleware('auth');

Route::put('/listings/{listing}', [ListingController::class, 'update'])
  ->middleware('auth');

Route::delete('/listings/{listing}', [ListingController::class, 'destroy'])
  ->middleware('auth');

Route::get('/listings/manage', [ListingController::class, 'manage'])
  ->middleware('auth');

Route::get('/listings/{listing}', [ListingController::class, 'show']);


//Users
Route::get('/register', [UserController::class, 'create'])
    ->middleware('guest');

Route::post('/users', [UserController::class, 'store']);

Route::post('/logout', [UserController::class, 'logout'])
  ->middleware('auth');

Route::get('/login', [UserController::class, 'login'])->name('login')
  ->middleware('guest');

Route::post('/authen', [UserController::class, 'authen']);
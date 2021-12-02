<?php

use App\Http\Controllers\Backend\ContinentController;
use App\Http\Controllers\Backend\CountryController;
use App\Http\Controllers\Backend\TaskController;
use App\Http\Controllers\Backend\UserController;
use App\Http\Controllers\DataProviderController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::resource('users', UserController::class);
Route::resource('continents', ContinentController::class);
Route::resource('countries', CountryController::class);
Route::get('/tasks-index', [TaskController::class, 'index'])->name('tasks.index');
Route::post('/tasks-index/storeOwnTask', [TaskController::class, 'storeOwnTask'])->name('tasks.index.storeOwnTask');
Route::post('/tasks-index/storeOtherTask', [TaskController::class, 'storeOtherTask'])->name('tasks.index.storeOtherTask');
Route::get('/tasks-overview', [TaskController::class, 'overview'])->name('tasks.overview');
Route::get('/tasks-assign-own', [TaskController::class, 'ownCreate'])->name('tasks.ownCreate');
Route::get('/tasks-assign-others', [TaskController::class, 'otherCreate'])->name('tasks.otherCreate');
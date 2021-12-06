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
Route::get('/tasks-index/{id}/edit', [TaskController::class, 'editIndex'])->name('tasks.index.editIndex');
Route::get('/tasks-index/{id}/editIndexRestricted', [TaskController::class, 'editIndexRestricted'])->name('tasks.index.editIndexRestricted');
Route::post('/tasks-index/{id}/update', [TaskController::class, 'updateIndex'])->name('tasks.index.updateIndex');
Route::delete('/tasks-index/{id}/delete', [TaskController::class, 'destroyIndex'])->name('tasks.index.destroyIndex');
Route::get('/tasks-overview', [TaskController::class, 'overview'])->name('tasks.overview');
Route::get('/tasks-overview/{id}/edit', [TaskController::class, 'editOverview'])->name('tasks.overview.editOverview');
Route::post('/tasks-overview/{id}/update', [TaskController::class, 'updateOverview'])->name('tasks.overview.updateOverview');
Route::delete('/tasks-overview/{id}/delete', [TaskController::class, 'destroyOverview'])->name('tasks.overview.destroyOverview');
Route::get('/tasks-assign-own', [TaskController::class, 'ownCreate'])->name('tasks.ownCreate');
Route::get('/tasks-assign-others', [TaskController::class, 'otherCreate'])->name('tasks.otherCreate');
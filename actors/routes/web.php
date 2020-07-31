<?php

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

Route::get('/', 'HomeController@index');

Route::prefix('admin')->group(function () {

    Auth::routes();
});
Route::group(['prefix' => 'admin', 'middleware' => ['auth']], function () {
    Route::get('home', 'StarsController@index')->name('home');
    Route::get('create', 'StarsController@create')->name('create');
    Route::get('{id}/update', 'StarsController@edit')->name('update');
    Route::put('{id}/update', 'StarsController@update');
    Route::post('create', 'StarsController@store');
    Route::get('{id}/destroy', 'StarsController@destroy')->name('destroy');
    Route::get('show/{id}', 'StarsController@show')->name('show');

});

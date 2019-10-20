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

Route::get('/', function () {
    return view('welcome');
});

//1
Route::get('/quan-tri/linh-vuc', function () {
    return "1";
});
//2
Route::post('/quan-tri/linh-vuc/them-moi', function () {
    return "2";
});
//3
Route::get('/quan-tri/linh-vuc/{id}', function ($id) {
    return $id;
});

//4
Route::delete('/quan-tri/linh-vuc/{id}/xoa', function ($id) {
    return $id;
});
//Gôm nhóm


Route::prefix('quan-tri')->group(function(){
	Route::prefix('linh-vuc')->group(function(){
		Route::get('/{id}', function ($id) {
    	return $id;
		});
	});

	Route::prefix('muc')->group(function(){
		Route::get('/{id}', function ($id) {
    	return $id;
		});
	});
	
});

//Route::get('helloController','UserController@index');
Route::get('users/{id}','UserController@show');

Route::get('user1', function() {
    return view('lv1.greetinglv1',['name'=>'James1']);
});


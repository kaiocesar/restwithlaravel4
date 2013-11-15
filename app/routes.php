<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
*/


// Route::get('/authtest', array('before' => 'auth.basic', function() {
// 	return View::make('hello');
// }));

Route::group(array("prefix" => "api/v1", "before" => "auth.basic"), function(){
	Route::resource('url', 'UrlController');
});

 // Route::get('/', function() {
 // 	return View::make('hello');
 // });

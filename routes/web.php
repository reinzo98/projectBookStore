<?php

use App\Genres;
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


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::get('/authcustomer', function () {
    dd('berhasil');
    return view('admin');
})->middleware('role:Customer');

Route::get('/authadmin', function () {
    dd('berhasil');
    return view('admin');
})->middleware('role:Admin');

Route::get('/', function () {
    if(Auth::user()->role==='Admin')
        return view('admin');
    if(Auth::user()->role==='Customer')
        return view('home');
})->middleware('auth');


Route::prefix("/book")->group(function(){
    // halaman list buku
    Route::any('/list', 'BookController@showBook')->name('BookList');


    // insert Book
    Route::any('/insert', 'BookController@insertForm');

    Route::any('/insertBook', 'BookController@insertBook');


    // me-aktifkan kembali Book
    Route::any('/active/{id}', 'BookController@active');

    // me-non-aktifkan Book
    Route::any('/nonActive/{id}', 'BookController@nonActive');

    // mengedit Book
    Route::any('/editForm/{id}', 'BookController@editForm');
    Route::any('/edit/{id}', 'BookController@edit');
});

Route::prefix("/genre")->group(function(){
    // halaman list genre
    Route::any('/list', 'GenreController@showGenre')->name('genreList');

    // insert genre
    Route::any('/insert', function () {
        return view('genre.insert');
    });
    Route::any('/insertGenre', 'GenreController@insertGenre');


    // me-aktifkan kembali genre
    Route::any('/active/{id}', 'GenreController@active');


    // me-non-aktifkan genre
    Route::any('/nonActive/{id}', 'GenreController@nonActive');


    // mengedit genre
    Route::any('/editForm/{id}', 'GenreController@editForm');

    Route::any('/edit/{id}', 'GenreController@edit');

});

Route::prefix("/admin")->group(function(){
    // halaman list admin
    Route::any('/list', 'AdminController@showAdmin')->name('AdminList');


    // insert admin
    Route::any('/insert', function () {
        return view('admin.insert');
    });
    Route::any('/insertAdmin', 'AdminController@insertAdmin');


    // me-aktifkan kembali admin
    Route::any('/active/{id}', 'AdminController@active');


    // me-non-aktifkan admin
    Route::any('/nonActive/{id}', 'AdminController@nonActive');


    // mengedit admin
    Route::any('/editForm/{id}', 'AdminController@editForm');

    Route::any('/edit/{id}', 'AdminController@edit');

});

Route::prefix("/user")->group(function(){
    // halaman list User
    Route::any('/list', 'UserController@showUser')->name('UserList');


    // me-aktifkan kembali User
    Route::any('/active/{id}', 'UserController@active');

    // me-non-aktifkan User
    Route::any('/nonActive/{id}', 'UserController@nonActive');

});

Route::view("/userPage", 'products');

<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\{PostController, SettingController};
use App\Http\Controllers\Admin\AdminController;

// Route::get('/', function () {
//     return view('welcome');
// });

// post routes
Route::get('/', [PostController::class, 'index'])->name('home');
Route::get('/category/{category}/posts', [PostController::class, 'postsByCategory'])->name('category.posts');
Route::get('/tag/{tag}/posts', [PostController::class, 'postsByTag'])->name('tag.posts');
Route::get('/posts/{post}/show', [PostController::class, 'show'])->name('posts.show');

// setting routes
Route::get('/change/{lang}/lang', [SettingController::class, 'toggleLang'])->name('change.lang');

// admin routes
Route::prefix("admin")->middleware("admin")->group(function () {
    Route::post('logout', [AdminController::class, 'logout'])->name('admin.logout');
});
Route::post('login', [AdminController::class, 'login'])->name('admin.login');
Route::post('admin/auth', [AdminController::class, 'auth'])->name('admin.auth');


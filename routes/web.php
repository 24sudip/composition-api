<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\{PostController, SettingController};

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


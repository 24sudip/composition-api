<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\{PostController, SettingController};
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\CategoryController;

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
    Route::get('dashboard', [AdminController::class, 'index'])->name('admin.index');
    Route::post('logout', [AdminController::class, 'logout'])->name('admin.logout');
    // categories routes
    Route::get('categories', [CategoryController::class, 'index'])->name('admin.categories.index');

    Route::get('categories/create', [CategoryController::class, 'create'])->name('admin.categories.create');
    Route::post('categories/store', [CategoryController::class, 'store'])->name('admin.categories.store');

    Route::get('categories/{category}/edit', [CategoryController::class, 'edit'])->name('admin.categories.edit');
    Route::put('categories/{category}/update', [CategoryController::class, 'update'])->name('admin.categories.update');
});
Route::get('admin/login', [AdminController::class, 'login'])->name('admin.login');
Route::post('admin/auth', [AdminController::class, 'auth'])->name('admin.auth');


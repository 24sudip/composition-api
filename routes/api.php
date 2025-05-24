<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\{CommentController, PostController};

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::post('/add/comment', [CommentController::class, 'store']);
Route::get('/get/{post_id}/comments', [CommentController::class, 'getPostComments']);

Route::post('/search', [PostController::class, 'postsByTerm']);


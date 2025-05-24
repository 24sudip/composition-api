<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comment;

class CommentController extends Controller
{
    public function getPostComments($post_id) {
        $comments = Comment::with('user')->where('post_id', $post_id)->latest()->get();
        return response()->json($comments);
    }

    public function store(Request $request) {
        $comment = Comment::create([
            'user_id' => $request->user_id,
            'post_id' => $request->post_id,
            'body' => $request->body
        ]);
        return response()->json($comment->load('user'));
    }
}


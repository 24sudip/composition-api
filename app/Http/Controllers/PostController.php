<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{Post, Category, Tag};

class PostController extends Controller
{
    public function index() {
        return view('home')->with([
            'posts' => Post::latest()->paginate(10)
        ]);
    }

    
    public function show(Post $post) {
        $next = Post::where('id','>', $post->id)->orderBy('id')->first();
        $previous = Post::where('id','<', $post->id)->orderBy('id','desc')->first();
        return view('posts.show')->with([
            'post' => $post,
            'next' => $next,
            'previous' => $previous
        ]);
    }

    public function postsByCategory(Category $category) {
        return view('home')->with([
            'posts' => $category->posts()->paginate(10)
        ]);
    }

    public function postsByTag(Tag $tag) {
        return view('home')->with([
            'posts' => $tag->posts()->paginate(10)
        ]);
    }
    public function postsByTerm(Request $request) {
        $posts = Post::where('title_en','LIKE','%'.$request->searchTerm.'%')
        ->orWhere('title_bn','LIKE','%'.$request->searchTerm.'%')->latest()->get();
        return response()->json($posts);
    }
}


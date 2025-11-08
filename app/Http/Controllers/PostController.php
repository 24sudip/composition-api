<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{Post, Category, Tag};
use Illuminate\Support\Str;

class PostController extends Controller
{
    public function index() {
        return view('home')->with([
            'posts' => Post::latest()->paginate(10)
        ]);
    }

    public function store(Request $request) {
        $request->validate([
            'title_en'=>'required|max:255',
            'title_bn'=>'required|max:255',
            'body_en'=>'required|max:5000',
            'body_bn'=>'required|max:5000',
            'photo' => 'required|image|mimes:png,jpg,jpeg,webp|max:2048',
            'category_id' => 'required'
        ]);
        $file = $request->file('photo');
        Post::create([
            'title_en'=>$request->title_en,
            'title_bn'=>$request->title_bn,
            'slug'=>Str::slug($request->title_en),
            'body_en'=>$request->body_en,
            'body_bn'=>$request->body_bn,
            'category_id'=>$request->category_id
        ]);
        return redirect()->route('admin.categories.index')->with([
            'success' => 'Category Added Successfully'
        ]);
    }

    public function create() {
        $categories = Category::all();
        return view('admin.posts.create', [
            'categories' => $categories
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


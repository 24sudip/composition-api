<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\{Post, Category};
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PostController extends Controller
{
    /**
     * Display all the posts
    */
    public function index() {
        return view('admin.posts.index') ->with([
            'posts'=>Post::latest()->paginate(5)
        ]);
    }

    /**
     * Store new post
    */
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
        $photo_name = time() . '_' . $file->getClientOriginalName();
        $file->storeAs('posts', $photo_name, 'public');
        Post::create([
            'title_en'=>$request->title_en,
            'title_bn'=>$request->title_bn,
            'slug'=>Str::slug($request->title_en),
            'body_en'=>$request->body_en,
            'body_bn'=>$request->body_bn,
            'category_id'=>$request->category_id,
            'photo' => 'storage/posts/' . $photo_name
        ]);
        return redirect()->route('admin.posts.index')->with([
            'success' => 'Post Added Successfully'
        ]);
    }

    /**
     * Display create post form
    */
    public function create() {
        $categories = Category::all();
        return view('admin.posts.create', [
            'categories' => $categories
        ]);
    }

    /**
     * Edit post
    */
    public function edit() {

    }
    /**
     * Update post
    */
    public function update() {

    }
    /**
     * Delete post
    */
    public function delete() {

    }
}

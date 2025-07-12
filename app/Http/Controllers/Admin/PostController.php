<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;

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
     * Display create post form
    */
    public function create() {

    }
    /**
     * Store new post
    */
    public function store() {

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

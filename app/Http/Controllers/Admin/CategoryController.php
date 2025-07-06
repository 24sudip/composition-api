<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class CategoryController extends Controller
{
    /**
     * Display all the categories
    */
    public function index() {
        return view('admin.categories.index')->with([
            'categories' => Category::latest()->paginate(5)
        ]);
    }
    /**
     * Display the create category form
    */
    public function create() {
        return view('admin.categories.create');
    }
    /**
     * Store new category
    */
    public function store(Request $request) {
        $request->validate([
            'name_en' => 'required|max:255',
            'name_bn' => 'required|max:255',
        ]);
        Category::create([
            'name_en'=>$request->name_en,
            'name_bn'=>$request->name_bn,
            'slug'=>Str::slug($request->name_en)
        ]);
        return redirect()->route('admin.categories.index')->with([
            'success' => 'Category Added Successfully'
        ]);
    }
    /**
     * Display edit category form
    */
    public function edit(Category $category) {
        return view('admin.categories.edit')->with([
            'category'=>$category
        ]);
    }
    /**
     * Update category
    */
    public function update(Request $request, Category $category) {
        $request->validate([
            'name_en' => 'required|max:255',
            'name_bn' => 'required|max:255',
        ]);
        $category->update([
            'name_en'=>$request->name_en,
            'name_bn'=>$request->name_bn,
            'slug'=>Str::slug($request->name_en)
        ]);
        return redirect()->route('admin.categories.index')->with([
            'success' => 'Category Updated Successfully'
        ]);
    }
}

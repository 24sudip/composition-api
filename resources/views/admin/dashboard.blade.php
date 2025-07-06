@extends('admin.layouts.app')

@section('title')
    Dashboard
@endsection

@section('content')
<div class="row my-5">
    @include('admin.layouts.sidebar')
    <div class="col-md-8">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="card bg-success text-white shadow-sm">
                            <div class="card-header text-center">
                                <h4 class="mt-2">Categories</h4>
                            </div>
                            <div class="card-body">
                                <p class="card-text fw-bold text-center">
                                    {{ $categories->count() }}
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card bg-primary text-white shadow-sm">
                            <div class="card-header text-center">
                                <h4 class="mt-2">Posts</h4>
                            </div>
                            <div class="card-body">
                                <p class="card-text fw-bold text-center">
                                    {{ $posts->count() }}
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

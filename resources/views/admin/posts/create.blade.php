@extends('admin.layouts.app')

@section('title')
    Create new post
@endsection

@section('content')
<div class="row my-5">
    @include('admin.layouts.sidebar')
    <div class="col-md-8">
        <h5>Create new post</h5>
        <hr>
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-8 mx-auto">
                        <form action="{{ route('admin.posts.store') }}" method="post">
                            @csrf
                            <div class="col">
                                <div class="mb-3">
                                    <label for="title_en" class="form-label">Title EN*</label>
                                    <input type="text" name="title_en" class="form-control @error('title_en') is-invalid @enderror" id="title_en" placeholder="Title EN" value="{{ old('title_en') }}">
                                    @error('title_en')
                                    <span class="invalid-feedback">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col">
                                <div class="mb-3">
                                    <label for="title_bn" class="form-label">Title BN*</label>
                                    <input type="text" name="title_bn" class="form-control @error('title_bn') is-invalid @enderror" id="title_bn" placeholder="Title BN" value="{{ old('title_bn') }}">
                                    @error('title_bn')
                                    <span class="invalid-feedback">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="body_en" class="form-label">Body EN*</label>
                                <textarea name="body_en" id="body_en" class="form-control @error('body_en') is-invalid @enderror" placeholder="Body EN*" rows="3">{{ old('body_en') }}</textarea>
                                @error('body_en')
                                <span class="invalid-feedback">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label for="body_bn" class="form-label">Body BN*</label>
                                <textarea name="body_bn" id="body_bn" class="form-control @error('body_bn') is-invalid @enderror" placeholder="Body BN*" rows="3">{{ old('body_bn') }}</textarea>
                                @error('body_bn')
                                <span class="invalid-feedback">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label for="photo" class="form-label">Choose File</label>
                                <input type="file" name="photo" id="photo" class="form-control @error('photo') is-invalid @enderror">
                                @error('photo')
                                <span class="invalid-feedback">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label for="category_id" class="form-label">Category</label>
                                <select class="form-select @error('category_id') is-invalid @enderror" name="category_id" id="category_id">
                                    <option selected disabled value="">Choose a category</option>
                                    @foreach ($categories as $category)
                                    <option value="{{ $category->id }}">{{ $category->name_en }}</option>
                                    @endforeach
                                </select>
                                @error('category_id')
                                <span class="invalid-feedback">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <button type="submit" class="btn btn-dark btn-sm">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

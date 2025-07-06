<!-- People find pleasure in different ways. I find it in keeping my mind clear. - Marcus Aurelius -->
@extends('admin.layouts.app')

@section('title')
    Update category
@endsection

@section('content')
<div class="row my-5">
    @include('admin.layouts.sidebar')
    <div class="col-md-8">
        <h5>Update category</h5>
        <hr>
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-8 mx-auto">
                        <form action="{{ route('admin.categories.update', $category->slug) }}" method="post">
                            @csrf
                            @method('PUT')
                            <div class="col">
                                <div class="mb-3">
                                    <label for="name_en" class="form-label">Name EN*</label>
                                    <input type="text" name="name_en" class="form-control @error('name_en') is-invalid @enderror" id="name_en" placeholder="Name EN" value="{{ old('name_en', $category->name_en) }}">
                                    @error('name_en')
                                    <span class="invalid-feedback">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col">
                                <div class="mb-3">
                                    <label for="name_bn" class="form-label">Name BN*</label>
                                    <input type="text" name="name_bn" class="form-control @error('name_bn') is-invalid @enderror" id="name_bn" placeholder="Name BN" value="{{ old('name_bn', $category->name_bn) }}">
                                    @error('name_bn')
                                    <span class="invalid-feedback">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="mb-3">
                                <button type="submit" class="btn btn-dark btn-sm">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


@extends('admin.layouts.app')

@section('title')
    Create new category
@endsection

@section('content')
<div class="row my-5">
    @include('admin.layouts.sidebar')
    <div class="col-md-8">
        <h5>Create new category</h5>
        <hr>
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-8 mx-auto">
                        <form action="{{ route('admin.categories.store') }}" method="post">
                            @csrf
                            <div class="col">
                                <div class="mb-3">
                                    <label for="name_en" class="form-label">Name EN*</label>
                                    <input type="text" name="name_en" class="form-control @error('name_en') is-invalid @enderror" id="name_en" placeholder="Name EN" value="{{ old('name_en') }}">
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
                                    <input type="text" name="name_bn" class="form-control @error('name_bn') is-invalid @enderror" id="name_bn" placeholder="Name BN" value="{{ old('name_bn') }}">
                                    @error('name_bn')
                                    <span class="invalid-feedback">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
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

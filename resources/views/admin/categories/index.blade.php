<!-- Do what you can, with what you have, where you are. - Theodore Roosevelt -->
@extends('admin.layouts.app')

@section('title')
    Categories
@endsection

@section('content')
<div class="row my-5">
    @include('admin.layouts.sidebar')
    <div class="col-md-8">
        <h5>Categories</h5>
        <hr>
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Name EN</th>
                                <th scope="col">Name BN</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($categories as $key => $category)
                            <tr>
                                <th scope="row">
                                    {{ ($categories->perPage() * ($categories->currentPage() - 1)) + $key + 1 }}
                                </th>
                                <td>{{ $category->name_en }}</td>
                                <td>{{ $category->name_bn }}</td>
                                <td>
                                    <a href="{{ route('admin.categories.create') }}" class="btn btn-sm btn-primary">
                                        <i class="fas fa-plus"></i>
                                    </a>
                                    <a href="{{ route('admin.categories.edit', $category->slug) }}" class="btn btn-sm btn-warning">
                                        <i class="fas fa-pencil"></i>
                                    </a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="d-flex justify-content-center">
                    {{ $categories->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

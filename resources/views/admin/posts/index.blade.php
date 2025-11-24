<!-- I begin to speak only when I am certain what I will say is not better left unsaid. - Cato the Younger -->
@extends('admin.layouts.app')

@section('title')
    Posts
@endsection

@section('content')
<div class="row my-5">
    @include('admin.layouts.sidebar')
    <div class="col-md-9">
        <h5>Posts</h5>
        <hr>
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Title EN</th>
                                <th scope="col">Title BN</th>
                                <th scope="col">Slug</th>
                                <th scope="col">Body EN</th>
                                <th scope="col">Body BN</th>
                                <th scope="col">Category</th>
                                <th scope="col">Image</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($posts as $key => $post)
                            <tr>
                                <th scope="row">
                                    {{ ($posts->perPage() * ($posts->currentPage() - 1)) + $key + 1 }}
                                </th>
                                <td>{{ $post->title_en }}</td>
                                <td>{{ $post->title_bn }}</td>
                                <td>{{ $post->slug }}</td>
                                <td>{{ Str::limit($post->body_en, 50) }}</td>
                                <td>{{ Str::limit($post->body_bn, 50) }}</td>
                                <td>{{ $post->category->name_en }}</td>
                                <td>
                                    {{-- <img src="https://picsum.photos/id/{{ $post->id }}/60/60" alt="{{ $post->photo }}" class=" rounded"> --}}
                                    <img src="{{ asset($post->photo) }}" alt="photo">
                                </td>
                                <td class="d-flex flex-column align-items-center">
                                    <a href="{{ route('admin.posts.create') }}" class="btn btn-sm btn-primary">
                                        <i class="fas fa-plus"></i>
                                    </a>
                                    <a href="{{ route('admin.posts.edit', $post->slug) }}" class="btn btn-sm btn-warning my-1">
                                        <i class="fas fa-pencil"></i>
                                    </a>
                                    <form action="{{ route('admin.posts.delete', $post->slug) }}" method="post">
                                        @csrf
                                        @method('DELETE')
                                        <button onclick="return confirm('Are you sure you want to delete this item?')" class="btn btn-sm btn-danger">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="d-flex justify-content-center">
                    {{ $posts->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


<!-- Let all your things have their places; let each part of your business have its time. - Benjamin Franklin -->
@extends('layouts.app')

@section('title')
    Home
@endsection

@section('content')
    <div class="row my-5">
        <div class="col-md-8">
            <div class="card p-4">
                <div class="row">
                    @foreach ($posts as $key => $post)
                    <div class="col-md-6 mb-4">
                        <div class="card h-100">
                            @if ($key % 4 == 0)
                            <img src="https://place-hold.it/389" alt="{{ $post->photo }}" class="card-img-top">
                            @elseif ($key % 4 == 1)
                            <img src="https://placehold.co/389" alt="{{ $post->photo }}" class="card-img-top">
                            @elseif ($key % 4 == 2)
                            <img src="https://dummyimage.com/389" alt="{{ $post->photo }}" class="card-img-top">
                            @elseif ($key % 4 == 3)
                            <img src="https://picsum.photos/id/{{ $key }}/389/389" alt="{{ $post->photo }}" class="card-img-top">
                            @endif
                            <div class="card-body">
                                <div class="card-title fw-bold">
                                    @if(session('lang') === 'bn')
                                    {{ $post->title_bn }}
                                    @else
                                    {{ $post->title_en }}
                                    @endif
                                </div>
                                <div class="card-text">
                                    @if(session('lang') === 'bn')
                                    {{ Str::limit($post->body_bn, 100, '...') }}
                                    @else
                                    {{ Str::limit($post->body_en, 100, '...') }}
                                    @endif
                                </div>
                            </div>
                            <div class="card-footer bg-white">
                                <a href="{{ route('posts.show', $post) }}" class="btn btn-sm btn-primary">
                                    <i class="fas fa-eye"></i>
                                    @if (session('lang') === 'bn')
                                    Bistarito
                                    @else
                                    View
                                    @endif
                                </a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
            <div class="card-footer bg-white d-flex justify-content-center">
                <div class="my-3">
                    {{ $posts->links() }}
                </div>
            </div>
        </div>
        @include('layouts.sidebar')
    </div>
@endsection


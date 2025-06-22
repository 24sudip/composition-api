<!-- He who is contented is rich. - Laozi -->
<div class="col-md-4">
    <div class="card">
        <div class="card-header bg-white text-center">
            <h3 class="mt-2">
                Categories
            </h3>
        </div>
        <div class="card-body">
            <ul class="list-group">
                @foreach ($categories as $category)
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <a class="btn btn-link text-decoration-none text-dark" href="{{ route('category.posts', $category) }}">
                        {{ $category->name_en }}
                    </a>
                    <span class="badge rounded-pill text-bg-primary">
                        {{ $category->posts()->count() }}
                    </span>
                </li>
                @endforeach
            </ul>
        </div>
    </div>
    <div class="card my-3">
        <div class="card-header bg-white text-center">
            <h3 class="mt-2">
                Tags
            </h3>
        </div>
        <div class="card-body">
            <div class="d-flex flex-wrap justify-content-start align-items-center">
                @foreach ($tags as $tag)
                <span class="bg-light rounded fw-bold mx-1 mb-1">
                    <a class="btn btn-link text-decoration-none text-dark" href="{{ route('tag.posts', $tag) }}">
                        {{ $tag->name }}
                    </a>
                </span>
                @endforeach
            </div>
        </div>
    </div>
</div>


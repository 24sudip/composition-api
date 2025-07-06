<!-- Live as if you were to die tomorrow. Learn as if you were to live forever. - Mahatma Gandhi -->
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="{{ route('admin.index') }}">Admin Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ route('home') }}">
                        <i class="fas fa-user"></i>
                        {{ auth()->guard('admin')->user()->name }}
                    </a>
                </li>
                <li class="nav-item">
                    <form action="{{ route('admin.logout') }}" id="logoutForm" method="post">
                        @csrf
                        <button class="nav-link" type="submit">
                            <i class="fas fa-sign-out"></i>
                            Logout
                        </button>
                    </form>
                </li>
            </ul>
            <search-button></search-button>
        </div>
    </div>
</nav>


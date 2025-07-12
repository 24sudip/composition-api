<div class="row my-3">
    <div class="col-md-6 mx-auto">
        {{-- @session('error')
        <div class="alert alert-danger">
            {{ session()->get('error') }}
        </div>
        @endsession --}}

        @session('success')
        <div class="alert alert-success">
            {{ session()->get('success') }}
        </div>
        @endsession
    </div>
</div>

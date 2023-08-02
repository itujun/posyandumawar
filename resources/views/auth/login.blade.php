@extends('layouts.auth_main')

@section('container')
    <h5 class="mt-3 text-gray-900 mb-4">Silahkan masuk ke akun Anda</h5>
    </div>

    @if (session()->has('sukses'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('sukses') }}
            {{-- <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button> --}}
        </div>
    @endif
    @if (session()->has('gagal'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            {{ session('gagal') }}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif

    <form action="/masuk" method="post">
        @csrf
        <div class="form-group">
            <input type="text" class="form-control form-control-user @error('email') is-invalid @enderror" id="email"
                name="email" placeholder="Email" autofocus value="{{ old('email') }}" required>
            @error('email')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>
        <div class="form-group">
            <input type="password" class="form-control  @error('password') is-invalid @enderror" id="password"
                name="password" placeholder="Password" required>
            @error('password')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>
        <button type="submit" class="btn btn-primary btn-user btn-block mb-4">
            Masuk
        </button>
    </form>
@endsection

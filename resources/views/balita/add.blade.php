@extends('layouts.main')

@section('container')
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Form <span class="text-primary">{{ $title }} Baru</span></h1>
    </div>

    <!-- Content Row -->
    <div class="row">
        <div class="col">

            <form action="/balita" method="post">
                @csrf
                <div class="modal-body">
                    <div class="form-group row">
                        <label for="nik" class="col-sm-2 col-form-label">NIK</label>
                        <input type="text" class="form-control col-sm-5 @error('nik') is-invalid @enderror"
                            id="nik" name="nik" placeholder="________________" maxlength="16"
                            value="{{ old('nik') }}" autofocus required>
                        @error('nik')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div class="form-group row">
                        <label for="nama" class="col-sm-2 col-form-label">Nama Balita</label>
                        <input type="text" class="form-control col-sm-5 @error('nama') is-invalid @enderror"
                            id="nama" name="nama" placeholder="....." value="{{ old('nama') }}"
                            oninput="toUpperCase(this)" required>
                        @error('nama')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div class="form-group row">
                        <label for="tgl_lahir" class="col-sm-2 col-form-label">Tanggal Lahir</label>
                        <input type="date" class="form-control col-sm-4 @error('tgl_lahir') is-invalid @enderror"
                            id="tgl_lahir" name="tgl_lahir" value="{{ old('tgl_lahir') }}" max="{{ date('Y-m-d') }}"
                            required>
                        @error('tgl_lahir')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div class="form-group row">
                        <label for="jenis_kelamin" class="col-sm-2 col-form-label">Jenis Kelamin</label>
                        <select class="form-control col-sm-4" id="jenis_kelamin" name="jenis_kelamin" required>
                            <option disabled hidden selected>Pilih Jenis Kelamin</option>
                            <option value="L" @if (old('jenis_kelamin') === 'L') selected @endif>Laki-laki</option>
                            <option value="P" @if (old('jenis_kelamin') === 'P') selected @endif>Perempuan</option>
                        </select>
                    </div>

                    <div class="form-group row">
                        <label for="nama_ibu" class="col-sm-2 col-form-label @error('nama_ibu') is-invalid @enderror">Nama
                            Ibu</label>
                        <input type="text" class="form-control col-sm-5" id="nama_ibu" name="nama_ibu"
                            placeholder="....." value="{{ old('nama_ibu') }}" oninput="toUpperCase(this)" required>
                        @error('nama_ibu')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div class="form-group row">
                        <label for="alamat" class="col-sm-2 col-form-label">Alamat</label>
                        <input type="text" class="form-control col-sm-5 @error('alamat') is-invalid @enderror"
                            id="alamat" name="alamat" placeholder="....." value="{{ old('alamat') }}"
                            oninput="toUpperCase(this)" required>
                        @error('alamat')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>

                <div class="container">
                    <hr>
                    <a href="/balita" class="btn btn-secondary font-weight-bold float-left ">Kembali</a>
                    <button type="submit" class="btn btn-primary font-weight-bold float-right">Tambah Balita</button>
                </div>
            </form>
        </div>
    </div>
@endsection

@section('script')
    <script>
        function toUpperCase(element) {
            element.value = element.value.toUpperCase();
        }
    </script>
@endsection

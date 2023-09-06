@extends('layouts.main')

@section('container')
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Form <span class="text-primary">Ubah Data Balita</span></h1>
    </div>

    <!-- Content Row -->
    <div class="row">
        <div class="col">

            <form action="/balita/{{ $balita->nama }}" method="post">
                @method('put')
                @csrf
                <div class="modal-body">
                    <div class="form-group row">
                        <label for="nik" class="col-sm-2 col-form-label">NIK</label>
                        <input type="text" class="form-control col-sm-5 @error('nik') is-invalid @enderror"
                            id="nik" name="nik" placeholder="xxxxxxxxxxx.." value="{{ old('nik', $balita->nik) }}"
                            autofocus>
                        @error('nik')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div class="form-group row">
                        <label for="nama" class="col-sm-2 col-form-label">Nama Balita</label>
                        <input type="text" class="form-control col-sm-5 @error('nama') is-invalid @enderror"
                            id="nama" name="nama" placeholder="....." oninput="toUpperCase(this)"
                            value="{{ old('nama', $balita->nama) }}">
                        @error('nama')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div class="form-group row">
                        <label for="tgl_lahir" class="col-sm-2 col-form-label">Tanggal Lahir</label>
                        <input type="date" class="form-control col-sm-4" id="tgl_lahir" name="tgl_lahir"
                            value="{{ old('tgl_lahir', $balita->tgl_lahir) }}">
                    </div>

                    <div class="form-group row">
                        <label for="jenis_kelamin" class="col-sm-2 col-form-label">Jenis Kelamin</label>
                        <select class="form-control col-sm-4" id="jenis_kelamin" name="jenis_kelamin">
                            <option disabled hidden selected>Pilih Jenis Kelamin</option>
                            @foreach ($jk as $j)
                                @if ($j == $balita->jenis_kelamin)
                                    <option selected value="{{ $j }}">{{ $j == 'L' ? 'Laki-laki' : 'Perempuan' }}
                                    </option>
                                @else
                                    <option value="{{ $j }}">{{ $j !== 'P' ? 'Laki-laki' : 'Perempuan' }}
                                    </option>
                                @endif
                            @endforeach
                        </select>
                    </div>

                    <div class="form-group row">
                        <label for="nama_ibu" class="col-sm-2 col-form-label @error('nama_ibu') is-invalid @enderror">Nama
                            Ibu</label>
                        <input type="text" class="form-control col-sm-5" id="nama_ibu" name="nama_ibu"
                            placeholder="....." oninput="toUpperCase(this)"
                            value="{{ old('nama_ibu', $balita->nama_ibu) }}">
                        @error('nama_ibu')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div class="form-group row">
                        <label for="alamat" class="col-sm-2 col-form-label">Alamat</label>
                        <input type="text" class="form-control col-sm-5 @error('alamat') is-invalid @enderror"
                            id="alamat" name="alamat" oninput="toUpperCase(this)" placeholder="....."
                            value="{{ old('alamat', $balita->alamat) }}">
                        @error('alamat')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>

                <div class="container">
                    <hr>
                    <a href="/balita" class="btn btn-secondary font-weight-bold float-left ">Kembali</a>
                    <button type="submit" class="btn btn-primary font-weight-bold float-right">Update Balita</button>
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

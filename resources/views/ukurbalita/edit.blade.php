@extends('layouts.main')

@section('container')
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Form <span class="text-primary">{{ $title }}</span></h1>
    </div>

    <!-- Content Row -->
    <div class="row">
        <div class="col">

            <form action="/ukur-balita/{{ $ukurbalita->id_ukur }}" method="post">
                @method('put')
                @csrf
                <div class="modal-body">

                    <div class="form-group row">
                        <label for="usia" class="col-sm-2 col-form-label">Nama Balita</label>
                        <input type="hidden" name="id_balita" value="{{ $balita['id_balita'] }}">
                        <input type="text" class="form-control col-sm-5" readonly name="nama"
                            value="{{ $balita['nama'] }}">
                    </div>

                    <div class="form-group row">
                        <label for="usia" class="col-sm-2 col-form-label">NIK</label>
                        <input type="text" class="form-control col-sm-5" readonly value="{{ $balita['nik'] }}">
                    </div>

                    <div class="form-group row">
                        <label for="usia_ukur" class="col-sm-2 col-form-label">Usia</label>
                        <input type="text" class="form-control col-sm-2" readonly id="usia_ukur" name="usia_ukur"
                            placeholder="....." value="{{ $ukurbalita['usia_ukur'] }}">
                        <div class="col-form-label col-sm-2"> Bulan.</div>
                    </div>

                    <div class="form-group row">
                        <label for="bb_ukur" class="col-sm-2 col-form-label">Berat Badan</label>
                        <input type="text" class="form-control col-sm-2 @error('bb_ukur') is-invalid @enderror"
                            id="bb_ukur" name="bb_ukur" placeholder="..... kg"
                            value="{{ old('bb_ukur', $ukurbalita['bb_ukur']) }}" required>
                        <div class=" col-form-label col-sm-2"> Kg.
                        </div>
                        @error('bb_ukur')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="form-group row">
                        <label for="tb_ukur" class="col-sm-2 col-form-label">Tinggi Badan</label>
                        <input type="text" class="form-control col-sm-2 @error('tb_ukur') is-invalid @enderror"
                            id="tb_ukur" name="tb_ukur" placeholder="..... cm"
                            value="{{ old('tb_ukur', $ukurbalita['tb_ukur']) }}" required>
                        <div class="col-form-label col-sm-2"> Cm.</div>
                        @error('tb_ukur')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="form-group row">
                        <label for="lk_ukur" class="col-sm-2 col-form-label">Lingkar Kepala</label>
                        <input type="text" class="form-control col-sm-2 @error('lk_ukur') is-invalid @enderror"
                            id="lk_ukur" name="lk_ukur" placeholder="..... cm"
                            value="{{ old('lk_ukur', $ukurbalita['lk_ukur']) }}" required>
                        <div class="col-form-label col-sm-2"> Cm.</div>
                        @error('lk_ukur')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="form-group row">
                        <label for="bulan" class="col-sm-2 col-form-label">Bulan</label>
                        <input type="text" class="form-control col-sm-2 @error('bulan') is-invalid @enderror"
                            id="bulan" name="bulan" placeholder="..... cm"
                            value="{{ old('bulan', $ukurbalita['bulan']) }}" required readonly>
                        <div class="col-form-label col-sm-2" name="{{ $ukurbalita['tahun'] }}">{{ $ukurbalita['tahun'] }}
                        </div>
                        @error('bulan')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <hr>
                    <a href="/ukur-balita" class="btn btn-secondary font-weight-bold float-left ">Kembali</a>
                    <button type="submit" class="btn btn-primary font-weight-bold float-right">Update Balita</button>
                </div>
            </form>
        </div>

    </div>
@endsection

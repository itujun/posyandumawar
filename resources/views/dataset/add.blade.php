@extends('layouts.main')

@section('container')
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Form <span class="text-primary">{{ $title }} Baru</span></h1>
    </div>

    <!-- Content Row -->
    <div class="row">
        <div class="col">

            <form action="/dataset" method="post">
                @csrf
                <div class="modal-body">
                    <div class="form-group row">
                        <label for="usia" class="col-sm-2 col-form-label">Usia</label>
                        <input type="text" class="form-control col-sm-2 @error('usia') is-invalid @enderror"
                            id="usia" name="usia" placeholder="....." value="{{ old('usia') }}"
                            onchange="usiaDatasetBerubah()" required>
                        <div class="col-form-label col-sm-1"> Bulan.</div>
                        @error('usia')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group row">
                        <label for="bb" class="col-sm-2 col-form-label">Berat Badan</label>
                        <input type="text" class="form-control col-sm-2 @error('bb') is-invalid @enderror" id="bb"
                            name="bb" placeholder="....." value="{{ old('bb') }}" required>
                        <div class="col-form-label col-sm-1"> Kg.</div>
                        @error('bb')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group row">
                        <label for="tb" class="col-sm-2 col-form-label">Tinggi Badan</label>
                        <input type="text" class="form-control col-sm-2 @error('tb') is-invalid @enderror" id="tb"
                            name="tb" placeholder="....." value="{{ old('tb') }}" required>
                        <div class="col-form-label col-sm-1"> Cm.</div>
                        @error('tb')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group row">
                        <label for="pengukuran" class="col-sm-2 col-form-label">Cara Pengukuran</label>
                        <select class="form-control col-sm-3 @error('pengukuran') is-invalid @enderror" id="pengukuran"
                            name="pengukuran" required>
                            <option hidden selected disabled>Pilih pengukuran</option>
                            @foreach ($pengukuran as $p)
                                <option value="{{ $p }}" {{ old('pengukuran') === $p ? 'selected' : '' }}>
                                    {{ $p }}</option>
                            @endforeach
                        </select>
                        @error('pengukuran')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group row">
                        <label for="lk" class="col-sm-2 col-form-label">Lebar Kepala</label>
                        <input type="text" class="form-control col-sm-2 @error('lk') is-invalid @enderror" id="lk"
                            name="lk" placeholder="....." value="{{ old('lk') }}" required>
                        <div class="col-form-label col-sm-1"> Cm.</div>
                        @error('lk')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group row">
                        <label for="jenis_kelamin" class="col-sm-2 col-form-label">Jenis Kelamin</label>
                        <select class="form-control col-sm-3 @error('jenis_kelamin') is-invalid @enderror"
                            id="jenis_kelamin" name="jenis_kelamin" required>
                            <option hidden selected disabled>Pilih jenis kelamin</option>
                            @foreach ($jeniskelamin as $jk)
                                <option value="{{ $jk }}" {{ old('jenis_kelamin') === $jk ? 'selected' : '' }}>
                                    {{ $jk == 'L' ? 'Laki-laki' : 'Perempuan' }}</option>
                            @endforeach
                        </select>
                        @error('jenis_kelamin')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <div class="container">
                    <hr>
                    <a href="/dataset" class="btn btn-secondary font-weight-bold float-left ">Kembali</a>
                    <button type="submit" class="btn btn-primary font-weight-bold float-right">Tambah Dataset</button>
                </div>
            </form>
        </div>
    </div>
@endsection

@section('script')
    <script>
        $(document).ready(function() {
            // cek usia pengukuran
            const usiapengukuran = document.getElementById('usia');
            const pengukuranSelect = document.getElementById('pengukuran');

            // Ubah elemen pengukuran menjadi objek jQuery supaya menggunakan metode find()
            const $pengukuranSelect = $(pengukuranSelect);

            const usia = parseInt(usiapengukuran.value);
            const berdiriOption = $pengukuranSelect.find("option[value='Berdiri']");
            const telentangOption = $pengukuranSelect.find("option[value='Telentang']");

            if (usia <= 23) {
                // pengukuranSelect.value = 'Telentang'; // mengunakan .value dari DOM
                $pengukuranSelect.val('Telentang'); // menggunakan .val() dari jQuery
                berdiriOption.prop("disabled", true);
                telentangOption.prop("disabled", false);
            } else if (usia >= 25) {
                $pengukuranSelect.val('Berdiri');
                berdiriOption.prop("disabled", false);
                telentangOption.prop("disabled", true);
            } else {
                berdiriOption.prop("disabled", false);
                telentangOption.prop("disabled", false);
            }
        });

        function usiaDatasetBerubah() {
            const usiapengukuran = document.getElementById('usia');
            const pengukuranSelect = document.getElementById('pengukuran');

            // Ubah elemen pengukuran menjadi objek jQuery supaya menggunakan metode fine()
            const $pengukuranSelect = $(pengukuranSelect);

            const usia = parseInt(usiapengukuran.value);
            const berdiriOption = $pengukuranSelect.find("option[value='Berdiri']");
            const telentangOption = $pengukuranSelect.find("option[value='Telentang']");

            if (usia <= 23) {
                // pengukuranSelect.value = 'Telentang'; // mengunakan .value dari DOM
                $pengukuranSelect.val('Telentang'); // menggunakan .val() dari jQuery
                berdiriOption.prop("disabled", true);
                telentangOption.prop("disabled", false);
            } else if (usia >= 25) {
                $pengukuranSelect.val('Berdiri');
                berdiriOption.prop("disabled", false);
                telentangOption.prop("disabled", true);
            } else {
                // hapus opsi sebelumnya, jika ada
                $pengukuranSelect.find("option[value='Pilih Pengukuran']").remove();

                // tambahkan kembali opsi "Pilih pengukuran" sebagai opsi default
                $pengukuranSelect.prepend('<option hidden selected disabled>Pilih pengukuran</option>');
                berdiriOption.prop("disabled", false);
                telentangOption.prop("disabled", false);
            }
        }
    </script>
@endsection

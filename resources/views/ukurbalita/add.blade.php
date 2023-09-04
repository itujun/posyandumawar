@extends('layouts.main')

@section('container')
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Form <span class="text-primary">{{ $title }} Baru</span></h1>
    </div>

    <!-- Content Row -->
    <div class="row">
        <div class="col">

            <form action="/ukur-balita" method="post">
                @csrf
                <div class="modal-body">

                    <div class="form-group row">
                        <label for="pilih_balita" class="col-sm-2 col-form-label">Pilih Balita</label>
                        <select class="select2 form-control col-sm-5 @error('pilih_balita') is-invalid @enderror"
                            id="pilih_balita" name="pilih_balita" autofocus>
                            <option hidden disabled selected value="{{ old('pilih_balita') }}">Pilih balita yang akan diukur
                            </option>
                            @foreach ($balita as $b)
                                <option value="{{ $b->id_balita }}"
                                    {{ old('pilih_balita') == $b->id_balita ? 'selected' : '' }}>
                                    {{ $selectedBalita && $b->id_balita == $selectedBalita->id_balita ? 'selected' : '' }}
                                    {{ $b->nik . ' | ' . $b->nama }}
                                </option>
                            @endforeach
                        </select>
                        @error('pilih_balita')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div class="form-group row">
                        <label for="jenis_kelamin" class="col-sm-2 col-form-label">Jenis Kelamin</label>
                        <input type="text" class="form-control col-sm-2" readonly id="jenis_kelamin" name="jenis_kelamin"
                            placeholder="....." value="{{ old('jenis_kelamin') }}">
                        @error('jenis_kelamin')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="form-group row">
                        <label for="usia_ukur" class="col-sm-2 col-form-label">Usia</label>
                        <input type="text" class="form-control col-sm-2" readonly id="usia_ukur" name="usia_ukur"
                            placeholder="....." value="{{ old('usia_ukur') }}">
                        <div class="col-form-label col-sm-2"> Bulan.</div>
                        @error('usia_ukur')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div class="form-group row">
                        <label for="bb_ukur" class="col-sm-2 col-form-label">Berat Badan</label>
                        <input type="text" class="form-control col-sm-2 @error('bb_ukur') is-invalid @enderror"
                            id="bb_ukur" name="bb_ukur" placeholder="..... kg" value="{{ old('bb_ukur') }}">
                        <div class=" col-form-label col-sm-2"> Kg.
                        </div>
                        @error('bb_ukur')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="form-group row">
                        <label for="tb_ukur" class="col-sm-2 col-form-label">Tinggi Badan</label>
                        <input type="text" class="form-control col-sm-2 @error('tb_ukur') is-invalid @enderror"
                            id="tb_ukur" name="tb_ukur" placeholder="..... cm" value="{{ old('tb_ukur') }}">
                        <div class="col-form-label col-sm-2"> Cm.</div>
                        @error('tb_ukur')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="form-group row">
                        <label for="pengukuran" class="col-sm-2 col-form-label">Cara Pengukuran</label>
                        <select class="form-control col-sm-3 mr-5 @error('pengukuran') is-invalid @enderror" id="pengukuran"
                            name="pengukuran">
                            <option hidden selected disabled>Pilih cara pengukuran</option>
                            @foreach ($pengukuran as $p)
                                <option value="{{ $p }}" {{ old('pengukuran') === $p ? 'selected' : '' }}>
                                    {{ $p }}</option>
                            @endforeach
                        </select>
                        @error('pengukuran')
                            <div class="invalid-feedback col-sm-5 ml-5 pl-2">
                                {{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group row">
                        <label for="lk_ukur" class="col-sm-2 col-form-label">Lingkar Kepala</label>
                        <input type="text" class="form-control col-sm-2 @error('lk_ukur') is-invalid @enderror"
                            id="lk_ukur" name="lk_ukur" placeholder="..... cm" value="{{ old('lk_ukur') }}">
                        <div class="col-form-label col-sm-2"> Cm.</div>
                        @error('lk_ukur')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="form-group row">
                        <label for="bulan" class="col-sm-2 col-form-label">Bulan pengukuran</label>
                        <select class="form-control col-sm-4 @error('bulan') is-invalid @enderror" id="bulan"
                            name="bulan">
                            <option selected hidden disabled>Pilih bulan pengukuran</option>
                            @foreach ($bulan as $bln)
                                <option value="{{ $bln }}">{{ $bln }}</option>
                            @endforeach
                        </select>
                        <input type="hidden" name="tahun" value="<?= Date('Y') ?>">
                        <div class="col-form-label col-sm-1"><?= Date('Y') ?></div>
                        @error('bulan')
                            <div class="invalid-feedback col-sm-5">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <hr>
                    <a href="/ukur-balita" class="btn btn-secondary font-weight-bold float-left ">Kembali</a>
                    <button type="submit" class="btn btn-primary font-weight-bold float-right">Tambah Balita</button>
                </div>
            </form>
        </div>

    </div>
@endsection

@section('script')
    <script>
        $(document).ready(function() {
            // Ketika dropdown 'pilih_balita' berubah
            $('#pilih_balita').change(function() {
                var selectedBalitaId = $(this).val();
                const $pengukuranSelect = $('#pengukuran');
                const berdiriOption = $pengukuranSelect.find("option[value='Berdiri']");
                const telentangOption = $pengukuranSelect.find("option[value='Telentang']");

                $.ajax({
                    url: '{{ route('getjk') }}',
                    type: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        balita_id: selectedBalitaId
                    },
                    success: function(data) {
                        $('#jenis_kelamin').val(data);
                    },
                    error: function() {
                        alert(
                            'Terjadi kesalahan dalam mengambil jenis kelamin balita.'
                        );
                    }
                });

                // Lakukan permintaan AJAX ke controller untuk menghitung usia balita berdasarkan id balita yang dipilih
                $.ajax({
                    url: '{{ route('hitungusia') }}',
                    type: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        balita_id: selectedBalitaId
                    },
                    success: function(data) {
                        $('#usia_ukur').val(data);

                        if (parseInt(data) >= 25) {
                            $('#pengukuran').val('Berdiri');
                            berdiriOption.prop("disabled", false);
                            telentangOption.prop("disabled", true);
                        } else if (parseInt(data) <= 23) {
                            $('#pengukuran').val('Telentang');
                            berdiriOption.prop("disabled", true);
                            telentangOption.prop("disabled", false);
                        } else {
                            $pengukuranSelect.find("option[value='Pilih Pengukuran']").remove();

                            // tambahkan kembali opsi "Pilih pengukuran" sebagai opsi default
                            $pengukuranSelect.prepend(
                                '<option hidden selected disabled>Pilih pengukuran</option>'
                            );
                            berdiriOption.prop("disabled", false);
                            telentangOption.prop("disabled", false);
                        }
                    },
                    error: function() {
                        alert('Terjadi kesalahan dalam menghitung usia balita.');
                    }
                });
            });
        });
    </script>
@endsection

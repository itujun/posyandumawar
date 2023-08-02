@extends('layouts.main')

@section('container')
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">{{ $title }}</h1>
    </div>

    <!-- Content Row -->
    <div class="row">
        <div class="col-lg">

            @if (session()->has('sukses'))
                <div class="alert alert-success alert-dismissible fade show notif-tambah" data-notif="{{ session('sukses') }}"
                    role="alert">
                    {{ session('sukses') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif
            @if (session()->has('normal'))
                <div class="alert alert-info alert-dismissible fade show notif-tetap" data-notif="{{ session('normal') }}"
                    role="alert">
                    {{ session('normal') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3 bg-gradient-danger">
                    <h6 class="m-0 font-weight-bold text-white">Tabel {{ $title }}</h6>
                </div>

                <div class="card-body">
                    <a href="/dataset/create" class="btn btn-primary btn-sm font-weight-bold mb-3">Tambah Dataset</a>
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th class="text-center">#</th>
                                    <th class="text-center">Usia</th>
                                    <th class="text-center">BB</th>
                                    <th class="text-center">TB</th>
                                    <th class="text-center">LK</th>
                                    <th class="text-center">JK</th>
                                    <th class="text-center">Pengukuran</th>
                                    <th class="text-center">Status BB/U</th>
                                    <th class="text-center">Status TB/U</th>
                                    <th class="text-center">Status Gizi</th>
                                    <th class="text-center">Status LK</th>
                                    <th class="text-center">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @if ($dataset->count() === 0)
                                    <tr>
                                        <td colspan="6" class="text-center"><b>Tidak ada dataset.</b></td>
                                    </tr>
                                @else
                                    @foreach ($dataset as $dts)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $dts->usia }} <span>bulan</span></td>
                                            <td>{{ $dts->bb }} <span>kg</span></td>
                                            <td>{{ $dts->tb }} <span>cm</span></td>
                                            <td>{{ $dts->lk }} <span>cm</span></td>
                                            <td>{{ $dts->jenis_kelamin }}</td>
                                            <td>{{ $dts->pengukuran }}</td>
                                            <td
                                                class="text-center font-weight-bold {{ $dts->sberat === 'Sangat kurang' || $dts->sberat === 'Risiko BB lebih' ? 'bg-danger text-white ' : '' }}{{ $dts->sberat === 'Normal' ? 'bg-success text-white' : '' }}{{ $dts->sberat === 'Kurang' ? 'bg-warning text-dark' : '' }} ">
                                                {{ $dts->sberat }}</td>
                                            <td
                                                class="text-center font-weight-bold {{ $dts->stinggi === 'Sangat pendek' || $dts->stinggi === 'Tinggi' ? 'bg-danger text-white ' : '' }}{{ $dts->stinggi === 'Normal' ? 'bg-success text-white' : '' }}{{ $dts->stinggi === 'Pendek' ? 'bg-warning text-dark' : '' }}">
                                                {{ $dts->stinggi }}</td>
                                            <td
                                                class="text-center font-weight-bold {{ $dts->sgizi === 'Gizi buruk' || $dts->sgizi === 'Gizi lebih' || $dts->sgizi === 'Obesitas' ? 'bg-danger text-white ' : '' }}{{ $dts->sgizi === 'Gizi baik' ? 'bg-success text-white' : '' }}{{ $dts->sgizi === 'Gizi kurang' || $dts->sgizi === 'Berisiko gizi lebih' ? 'bg-warning text-dark' : '' }}">
                                                {{ $dts->sgizi }}</td>
                                            <td
                                                class="text-center font-weight-bold {{ $dts->skepala === 'Terlalu kecil' || $dts->skepala === 'Terlalu besar' ? 'bg-danger text-white ' : '' }}{{ $dts->skepala === 'Normal' ? 'bg-success text-white' : '' }}">
                                                {{ $dts->skepala }}</td>
                                            <td class="text-center">
                                                <form action="/dataset/{{ $dts->id }}" method="post"
                                                    class="d-inline">
                                                    @method('delete')
                                                    @csrf
                                                    <button type="submit"
                                                        class="tombolHapus btn btn-danger font-weight-bold btn-sm"
                                                        data-usia="{{ $dts->usia }}" data-bb="{{ $dts->bb }}"
                                                        data-tb="{{ $dts->tb }}"
                                                        data-lk="{{ $dts->lk }}">Hapus</button>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- Modal -->
    <div class="modal fade" id="modalbalita" tabindex="-1" aria-labelledby="modalbalitaLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalbalitaLabel">Detail data balita:</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group row">
                        <label for="nikbalita" class="col-sm-4 ml-2 col-form-label">NIK</label>
                        <div class="form-control col-sm-7" id="nikbalita">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="namabalita" class="col-sm-4 ml-2 col-form-label">Nama</label>
                        <div class="form-control col-sm-7" id="namabalita">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="jkbalita" class="col-sm-4 ml-2 col-form-label">Jenis Kelamin</label>
                        <div class="form-control col-sm-7" id="jkbalita">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="tgllahirbalita" class="col-sm-4 ml-2 col-form-label">Tanggal Lahir</label>
                        <div class="form-control col-sm-7" id="tgllahirbalita">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="ibubalita" class="col-sm-4 ml-2 col-form-label">Nama Ibu</label>
                        <div class="form-control col-sm-7" id="ibubalita">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="alamatbalita" class="col-sm-4 ml-2 col-form-label">Alamat</label>
                        <div class="form-control col-sm-7" id="alamatbalita">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

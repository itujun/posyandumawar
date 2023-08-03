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
                    <div class="d-flex">
                        <a href="/ukur-balita/create" class="btn btn-primary btn-sm font-weight-bold mb-3">Tambah Ukur
                            Balita</a>
                        {{-- <a href="{{ route('export') }}" class="btn btn-sm btn-success font-weight-bold mb-3 ml-auto">Export
                            to Excel</a> --}}
                    </div>

                    <div class="table-responsive">
                        @if ($namabalita->count() === 0)
                            <table class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th class="text-center">#</th>
                                        <th class="text-center">Nama Balita</th>
                                        <th class="text-center">Usia</th>
                                        <th class="text-center">JK</th>
                                        <th class="text-center">BB</th>
                                        <th class="text-center">TB</th>
                                        <th class="text-center">LK</th>
                                        <th class="text-center">Gizi</th>
                                        <th class="text-center">Bulan</th>
                                        <th class="text-center">Tahun</th>
                                        <th class="text-center">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="11" class="text-center"><b>Tidak ada ukur balita.</b></td>
                                    </tr>
                                </tbody>
                            </table>
                        @else
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th class="text-center">#</th>
                                        <th class="text-center">Nama Balita</th>
                                        <th class="text-center">Usia</th>
                                        <th class="text-center">JK</th>
                                        <th class="text-center">BB</th>
                                        <th class="text-center">TB</th>
                                        <th class="text-center">LK</th>
                                        <th class="text-center">Gizi</th>
                                        <th class="text-center">Bulan</th>
                                        <th class="text-center">Tahun</th>
                                        <th class="text-center">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($namabalita as $nmb)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $nmb->balita->nama }}</td>
                                            <td>{{ $nmb->usia_ukur }} <span>bulan</span></td>
                                            <td class="text-center">{{ $nmb->jenis_kelamin }}</td>
                                            <td>{{ $nmb->bb_ukur }} <span>kg</span></td>
                                            <td>{{ $nmb->tb_ukur }} <span>cm</span></td>
                                            <td>{{ $nmb->lk_ukur }} <span>cm</span></td>
                                            <td
                                                class="text-center font-weight-bold {{ $nmb->sgizi === 'Gizi buruk' || $nmb->sgizi === 'Gizi lebih' || $nmb->sgizi === 'Obesitas' ? 'bg-danger text-white ' : '' }}{{ $nmb->sgizi === 'Gizi baik' ? 'bg-success text-white' : '' }}{{ $nmb->sgizi === 'Gizi kurang' || $nmb->sgizi === 'Berisiko gizi lebih' ? 'bg-warning text-dark' : '' }}">
                                                {{ $nmb->sgizi }}</td>
                                            <td class="text-center">{{ $nmb->bulan }}</td>
                                            <td class="text-center">{{ $nmb->tahun }}</td>
                                            <td class="text-center">
                                                <a href="/ukur-balita/{{ $nmb->id_ukur }}"
                                                    class="btn btn-success btn-sm font-weight-bold">Detail</a>
                                                <a href="/ukur-balita/{{ $nmb->id_ukur }}/edit"><span
                                                        class="btn btn-warning btn-sm font-weight-bold">Ubah</span></a>
                                                <form action="/ukur-balita/{{ $nmb->id_ukur }}" method="post"
                                                    class="d-inline">
                                                    @method('delete')
                                                    @csrf
                                                    <button type="submit"
                                                        class="tombolHapus btn btn-danger font-weight-bold btn-sm"
                                                        data-nama="{{ $nmb->balita->nama }}"
                                                        data-bulan="{{ $nmb->bulan }}"
                                                        data-tahun="{{ $nmb->tahun }}">Hapus</button>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        @endif
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

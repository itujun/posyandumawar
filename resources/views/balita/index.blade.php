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
                <div class="alert alert-success alert-dismissible fade show notif-tambah" role="alert"
                    data-notif="{{ session('sukses') }}">
                    {{ session('sukses') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif
            @if (session()->has('normal'))
                <div class="alert alert-info alert-dismissible fade show notif-tetap" role="alert"
                    data-notif="{{ session('normal') }}">
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
                    <a href="/balita/create" class="btn btn-primary btn-sm font-weight-bold mb-3">Tambah Data Balita</a>
                    <div class="table-responsive">
                        @if ($balita->count() === 0)
                            <table class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th class="text-center">#</th>
                                        <th class="text-center">NIK</th>
                                        <th class="text-center">Nama</th>
                                        <th class="text-center">JK</th>
                                        <th class="text-center">Tanggal Lahir</th>
                                        <th class="text-center">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="6" class="text-center"><b>Tidak ada data balita.</b></td>
                                    </tr>
                                </tbody>
                            </table>
                        @else
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th class="text-center">#</th>
                                        <th class="text-center">NIK</th>
                                        <th class="text-center">Nama</th>
                                        <th class="text-center">JK</th>
                                        <th class="text-center">Tanggal Lahir</th>
                                        <th class="text-center">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($balita as $b)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $b->nik }}</td>
                                            <td>{{ $b->nama }}</td>
                                            <td class="text-center">{{ $b->jenis_kelamin }}</td>
                                            <td class="text-center">{{ $b->tgl_lahir }}</td>
                                            <td class="text-center">
                                                <a href="/balita/{{ $b->nama }}" data-id="{{ $b->nama }}"
                                                    data-toggle="modal" data-target="#modalbalita"><span
                                                        class="btn btn-success btn-sm font-weight-bold detailModalBalita">Detail</span></a>
                                                <a href="/balita/{{ $b->nama }}/edit"><span
                                                        class="btn btn-warning btn-sm font-weight-bold">Ubah</span></a>

                                                <form action="/balita/{{ $b->nama }}" method="post" class="d-inline">
                                                    @method('delete')
                                                    @csrf
                                                    <button type="submit"
                                                        class="tombolHapus btn btn-danger font-weight-bold btn-sm"
                                                        data-nama="{{ $b->nama }}">Hapus</button>
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

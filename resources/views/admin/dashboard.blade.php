@extends('layouts.main')

@section('container')
    @if (session()->has('sukses'))
        <div class="notif" data-notif="{{ session('sukses') }}"></div>
    @endif

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
        <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> -->
    </div>

    <!-- Content Row -->
    <div class="row">

        <!--  Card Balita -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                Data Balita</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $totalbalita }}</div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-baby fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--  Card Dataset -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                Dataset</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $totaldataset }}</div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-archive fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Card Ukur Balita -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                Ukur Balita</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $totalukurbalita }}</div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-weight fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <hr>
    <div class="row">

        {{-- Statistik Status Berat --}}
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card shadow">
                <h5 class="card-header bg-gradient-success text-white">Status Berat</h5>
                <div class="card-body">
                    <h5 class="card-title">Statistik</h5>
                    <button class="btn font-weight-bold btn-danger"><span class="icon text-white">{{ $totalsberatskurang }}
                            |</span>
                        <span class="text">Sangat kurang</span>
                    </button><br>
                    <button class="btn font-weight-bold mt-2 btn-warning"><span
                            class="icon text-black">{{ $totalsberatkurang }} |</span>
                        <span class="text">Kurang</span>
                    </button><br>
                    <button class="btn font-weight-bold mt-2 btn-success"><span
                            class="icon text-white">{{ $totalsberatnormal }} |</span>
                        <span class="text">Normal</span>
                    </button><br>
                    <button class="btn font-weight-bold mt-2 btn-danger"><span
                            class="icon text-white">{{ $totalsberatrbblebih }} |</span>
                        <span class="text">Risiko BB lebih</span>
                    </button>
                </div>
            </div>
        </div>

        {{-- Statistik Status Tinggi --}}
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card shadow">
                <h5 class="card-header bg-gradient-warning text-black">Status Tinggi</h5>
                <div class="card-body">
                    <h5 class="card-title">Statistik</h5>
                    <button class="btn font-weight-bold btn-danger"><span class="icon text-white">{{ $totalstinggispendek }}
                            |</span>
                        <span class="text">Sangat pendek</span>
                    </button><br>
                    <button class="btn font-weight-bold mt-2 btn-warning"><span
                            class="icon text-black">{{ $totalstinggipendek }} |</span>
                        <span class="text">Pendek</span>
                    </button><br>
                    <button class="btn font-weight-bold mt-2 btn-success"><span
                            class="icon text-white">{{ $totalstingginormal }} |</span>
                        <span class="text">Normal</span>
                    </button><br>
                    <button class="btn font-weight-bold mt-2 btn-danger"><span
                            class="icon text-white">{{ $totalstinggitinggi }} |</span>
                        <span class="text">Tinggi</span>
                    </button>
                </div>
            </div>
        </div>

        {{-- Statistik Status Tinggi --}}
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card shadow">
                <h5 class="card-header bg-gradient-primary text-white">Status Gizi</h5>
                <div class="card-body">
                    <h5 class="card-title">Statistik</h5>
                    <button class="btn font-weight-bold btn-danger"><span class="icon text-white">{{ $totalsgizigburuk }}
                            |</span>
                        <span class="text">Gizi buruk</span>
                    </button><br>
                    <button class="btn font-weight-bold mt-2 btn-warning"><span
                            class="icon text-black">{{ $totalsgizigkurang }}
                            |</span>
                        <span class="text">Gizi kurang</span>
                    </button><br>
                    <button class="btn font-weight-bold mt-2 btn-success"><span
                            class="icon text-white">{{ $totalsgizigbaik }}
                            |</span>
                        <span class="text">Gizi baik</span>
                    </button><br>
                    <button class="btn font-weight-bold mt-2 btn-warning"><span
                            class="icon text-black">{{ $totalsgizigblebih }}
                            |</span>
                        <span class="text">Berisiko gizi lebih</span>
                    </button><br>
                    <button class="btn font-weight-bold mt-2 btn-warning"><span
                            class="icon text-black">{{ $totalsgizigblebih }}
                            |</span>
                        <span class="text">Gizi lebih</span>
                    </button><br>
                    <button class="btn font-weight-bold mt-2 btn-danger"><span
                            class="icon text-white">{{ $totalsgizigobesitas }} |</span>
                        <span class="text">Obesitas</span>
                    </button>
                </div>
            </div>
        </div>

        {{-- Statistik Status Kepala --}}
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card shadow">
                <h5 class="card-header bg-gradient-success text-white">Status Lingkar Kepala</h5>
                <div class="card-body">
                    <h5 class="card-title">Statistik</h5>
                    <button class="btn font-weight-bold btn-danger"><span class="icon text-white">{{ $totalskepalakecil }}
                            |</span>
                        <span class="text">Terlalu Kecil</span>
                    </button><br>
                    <button class="btn font-weight-bold mt-2 btn-success"><span
                            class="icon text-white">{{ $totalskepalanormal }} |</span>
                        <span class="text">Normal</span>
                    </button><br>
                    <button class="btn font-weight-bold mt-2 btn-danger"><span
                            class="icon text-white">{{ $totalskepalabesar }} |</span>
                        <span class="text">Terlalu Besar</span>
                    </button>
                </div>
            </div>
        </div>
    @endsection

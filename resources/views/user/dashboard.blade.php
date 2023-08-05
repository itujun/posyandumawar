@extends('layouts.main')

@section('container')
    @if (session()->has('sukses'))
        <div class="notif" data-notif="{{ session('sukses') }}"></div>
    @endif
    <div class="container">
        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between">
            <h1 class="h3 mb-0 text-gray-800">Dashboard Balitaku</h1>
        </div>

        <!-- Content Row -->
        <div class="card-body">

            <div class="row">
                <div class="col">
                    <div class="card shadow">
                        <div class="card-header py-3 bg-gradient-danger">
                            <h6 class="m-0 font-weight-bold text-white">NAMA: {{ $nama }}</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped" id="dataTable" width="100%"
                                    cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Bulan ukur</th>
                                            <th>Usia</th>
                                            <th>BB</th>
                                            <th>TB</th>
                                            <th>LK</th>
                                            <th>Status Berat</th>
                                            <th>Status Tinggi</th>
                                            <th>Status Kepala</th>
                                            <th>Status Gizi</th>
                                            <th>Tahun</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($balita as $b)
                                            <tr>
                                                <td>{{ $b['bulan'] }}</td>
                                                <td>{{ $b['usia_ukur'] }}</td>
                                                <td>{{ $b['bb_ukur'] }}</td>
                                                <td>{{ $b['tb_ukur'] }}</td>
                                                <td>{{ $b['lk_ukur'] }}</td>
                                                <td
                                                    class="{{ $b['sberat'] == 'Risiko BB lebih' || $b['sberat'] == 'Sangat kurang' ? 'text-danger font-weight-bold' : '' }} {{ $b['sberat'] == 'Kurang' ? 'text-warning font-weight-bold' : '' }}{{ $b['sberat'] == 'Normal' ? 'text-success font-weight-bold' : '' }}">
                                                    {{ $b['sberat'] }}</td>
                                                <td
                                                    class="{{ $b['stinggi'] == 'Sangat pendek' || $b['stinggi'] == 'Tinggi' ? 'text-danger font-weight-bold' : '' }}
                                          {{ $b['stinggi'] == 'Pendek' ? 'text-warning font-weight-bold' : '' }}
                                          {{ $b['stinggi'] == 'Normal' ? 'text-success font-weight-bold' : '' }}">
                                                    {{ $b['stinggi'] }}</td>
                                                <td
                                                    class="{{ $b['skepala'] == 'Terlalu kecil' || $b['skepala'] == 'Terlalu besar' ? 'text-danger font-weight-bold' : '' }}{{ $b['skepala'] == 'Normal' ? 'text-success font-weight-bold' : '' }}">
                                                    {{ $b['skepala'] }}</td>
                                                <td
                                                    class="{{ $b['sgizi'] == 'Gizi buruk' || $b['sgizi'] == 'Obesitas' ? 'text-danger font-weight-bold' : '' }}
                                          {{ $b['sgizi'] == 'Gizi kurang' || $b['sgizi'] == 'Berisiko gizi lebih' || $b['sgizi'] == 'Gizi lebih' ? 'text-warning font-weight-bold' : '' }}
                                          {{ $b['sgizi'] == 'Gizi baik' ? 'text-success font-weight-bold' : '' }}">
                                                    {{ $b['sgizi'] }}</td>
                                                <td>{{ $b['tahun'] }}</td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-12 col-md-6">
                                <div class="card border-left-primary shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class=" font-weight-bold text-info text-uppercase mb-1">Saran menurut
                                                    bulan
                                                    pengukuran terakhir untuk hasil status gizi
                                                </div>
                                                <div class="h6 mb-0 mr-3 text-gray-700">
                                                    <small><b>{!! $saranGizi !!}</b></small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-12 col-md-6">
                                <div class="card border-left-success shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class=" font-weight-bold text-info text-uppercase mb-1">Saran menurut
                                                    bulan
                                                    pengukuran terakhir untuk hasil status berat
                                                </div>
                                                <div class="h6 mb-0 mr-3 text-gray-700">
                                                    <small><b>{!! $saranBerat !!}</b></small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-12 col-md-6">
                                <div class="card border-left-warning shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class=" font-weight-bold text-info text-uppercase mb-1">Saran menurut
                                                    bulan
                                                    pengukuran terakhir untuk hasil status tinggi
                                                </div>
                                                <div class="h6 mb-0 mr-3 text-gray-700">
                                                    <small><b>{!! $saranTinggi !!}</b></small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-12 col-md-6">
                                <div class="card border-left-info shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class=" font-weight-bold text-info text-uppercase mb-1">Saran menurut
                                                    bulan
                                                    pengukuran terakhir untuk hasil status kepala
                                                </div>
                                                <div class="h6 mb-0 mr-3 text-gray-700">
                                                    <small><b>{!! $saranKepala !!}</b></small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endsection

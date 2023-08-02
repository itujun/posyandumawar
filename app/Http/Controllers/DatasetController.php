<?php

namespace App\Http\Controllers;

use App\Models\Dataset;
use App\Models\UkurBalita;
use Illuminate\Http\Request;
use Symfony\Component\VarDumper\Cloner\Data;
use Illuminate\Support\Facades\DB;

class DatasetController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    protected $DatasetM;
    public function __construct(Dataset $dataset)
    {
        $this->DatasetM = $dataset;
    }

    public function index()
    {
        return view('dataset.index', [
            'title' => 'Dataset',
            'dataset' => Dataset::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dataset.add', [
            'title' => 'Tambah Dataset',
            'pengukuran' => ['Telentang', 'Berdiri'],
            'jeniskelamin' => ['L', 'P'],
            'statusberat' => ['Sangat kurang', 'Kurang', 'Normal', 'Risiko BB lebih'],
            'statustinggi' => ['Sangat pendek', 'Pendek', 'Normal', 'Tinggi'],
            'statusgizi' => ['Gizi buruk', 'Gizi kurang', 'Gizi baik', 'Berisiko gizi lebih', 'Gizi lebih', 'Obesitas'],
            'statuskepala' => ['Terlalu kecil', 'Normal', 'Terlalu besar'],
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'usia' => 'required|numeric|max:60|min:0|regex:/^[0-60]+$/',
            'bb' => 'required|numeric|max:50|min:0',
            'tb' => 'required|numeric|max:150|min:10',
            'lk' => 'required|numeric|max:70|min:0',
            'pengukuran' => 'required',
            'jenis_kelamin' => 'required',
            'sberat' => 'required',
            'stinggi' => 'required',
            'sgizi' => 'required',
            'skepala' => 'required',
        ], [
            'usia.required' => 'Kolom Usia harus diisi',
            'usia.numeric' => 'Kolom Usia harus diisi berupa angka (0, 1, 2, ... dst)',
            'usia.max' => 'Kolom Usia melebihi batas maksimal! Maksimal = :max bulan',
            'usia.min' => 'Kolom Usia melebihi batas minimal! Minimal = :min bulan.',
            'usia.regex' => 'Kolom Usia hanya menerima isian berupa angka 0-60 dan bukan desimal!',
            'bb.required' => 'Kolom Berat Badan harus diisi',
            'bb.numeric' => 'Kolom Berat Badan harus diisi berupa angka (0, 1, 2, ... dst)',
            'bb.max' => 'Kolom Berat Badan melebihi batas maksimal! Maksimal = :max kg.',
            'bb.min' => 'Kolom Berat Badan melebihi batas minimal! Minimal = :min kg.',
            'tb.required' => 'Kolom Tinggi Badan harus diisi',
            'tb.numeric' => 'Kolom Tinggi Badan harus diisi berupa angka (0, 1, 2, ... dst)',
            'tb.max' => 'Kolom Tinggi Badan melebihi batas maksimal! Maksimal = :max cm.',
            'tb.min' => 'Kolom Tinggi Badan melebihi batas minimal! Minimal = :min cm.',
            'lk.required' => 'Kolom Lebar Kepala harus diisi',
            'lk.numeric' => 'Kolom Lebar Kepala harus diisi berupa angka (0, 1, 2, ... dst)',
            'lk.max' => 'Kolom Lebar Kepala melebihi batas maksimal! Maksimal = :max cm.',
            'lk.min' => 'Kolom Lebar Kepala melebihi batas minimal! Minimal = :min cm.',
            'pengukuran.required' => 'Harus memilih kolom Pengukuran',
            'jenis_kelamin.required' => 'Harus memilih kolom Jenis Kelamin',
            'sberat.required' => 'Harus memilih kolom Status Berat',
            'stinggi.required' => 'Harus memilih kolom Status Tinggi',
            'sgizi.required' => 'Harus memilih kolom Status Gizi',
            'skepala.required' => 'Harus memilih kolom Lingkar Kepala',
        ]);

        $cekData = $this->cekKesamaanData($validateData);
        if (!$cekData) {
            Dataset::create($validateData);
            $dataset = Dataset::all()->last();
            $jk = $dataset->jenis_kelamin == 'L' ? 'Laki-laki' : 'Perempuan';
            return redirect('dataset')->with('sukses', 'Dataset baru berhasil ditambahkan! Usia ' . $dataset->usia . ' bulan, bb ' . $dataset->bb . 'kg, tb ' . $dataset->tb . 'cm, lk ' . $dataset->lk . 'cm, jenis kelamin ' . $jk . ', pengukuran ' . $dataset->pengukuran);
        }
        return redirect('dataset')->with('normal', 'Dataset baru yang Anda masukkan telah tersedia sebelumnya!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Dataset $dataset)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Dataset $dataset)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Dataset $dataset)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Dataset $dataset)
    {
        Dataset::destroy($dataset->id);
        return redirect('dataset')->with('sukses', 'Dataset usia ' . $dataset->usia . ' bulan, berat badan ' . $dataset->bb . 'kg, tinggi badan ' . $dataset->tb . 'cm, lingkar kepala ' . $dataset->lk . 'cm berhasil dihapus!');
    }

    public function cekKesamaanData($data)
    {
        $cek = [
            'usia' => $data['usia'],
            'bb' => $data['bb'],
            'tb' => $data['tb'],
            'lk' => $data['lk'],
            'pengukuran' => $data['pengukuran'],
            'jenis_kelamin' => $data['jenis_kelamin'],
        ];

        $hasil = Dataset::where($cek)->first();
        return $hasil;
    }
}

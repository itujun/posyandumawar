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
        ]);

        $zscoregizi = $this->DatasetM->getZscoreGizi($validateData['usia'], $validateData['bb'], $validateData['tb'], $validateData['pengukuran'], $validateData['jenis_kelamin']);
        $statusgizi = $this->getKelasStatusGizi($zscoregizi);

        $zscoreberat = $this->DatasetM->getZscoreBerat($validateData['usia'], $validateData['bb'], $validateData['jenis_kelamin']);
        $statusberat = $this->getKelasStatusBerat($zscoreberat);

        $zscoretinggi = $this->DatasetM->getZscoreTinggi($validateData['usia'], $validateData['tb'], $validateData['pengukuran'], $validateData['jenis_kelamin']);
        $statustinggi = $this->getKelasStatusTinggi($zscoretinggi);

        $statuslebarkepala = $this->DatasetM->getZscoreKepala($validateData['usia'], $validateData['lk'], $validateData['jenis_kelamin']);

        $validateData['sberat'] = $statusberat;
        $validateData['stinggi'] = $statustinggi;
        $validateData['sgizi'] = $statusgizi;
        $validateData['skepala'] = $statuslebarkepala;

        $cekData = $this->cekKesamaanData($validateData);
        if ($cekData) {
            return redirect('dataset')->with('normal', 'Dataset baru yang Anda masukkan telah tersedia sebelumnya!');
        } else {
            Dataset::create($validateData);
            $dataset = Dataset::all()->last();
            $jk = $dataset->jenis_kelamin == 'L' ? 'Laki-laki' : 'Perempuan';

            return redirect('dataset')->with('sukses', 'Dataset baru berhasil ditambahkan! Usia ' . $dataset->usia . ' bulan, bb ' . $dataset->bb . 'kg, tb ' . $dataset->tb . 'cm, lk ' . $dataset->lk . 'cm, jenis kelamin ' . $jk . ', pengukuran ' . $dataset->pengukuran);
        }
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

    private function getKelasStatusGizi($z)
    {
        if ($z <= -3) {
            return 'Gizi buruk';
        } elseif ($z > -3 && $z <= -2) {
            return 'Gizi kurang';
        } elseif ($z > -2 && $z <= 1) {
            return 'Gizi baik';
        } elseif ($z > 1 && $z <= 2) {
            return 'Berisiko gizi lebih';
        } elseif ($z > 2 && $z < 3) {
            return 'Gizi lebih';
        } else {
            return 'Obesitas';
        }
    }

    private function getKelasStatusBerat($z)
    {
        if ($z <= -3) {
            return 'Sangat kurang';
        } elseif ($z > -3 && $z <= -2) {
            return 'Kurang';
        } elseif ($z > -2 && $z <= 1) {
            return 'Normal';
        } else {
            return 'Risiko BB lebih';
        }
    }

    private function getKelasStatusTinggi($z)
    {
        if ($z <= -3) {
            return 'Sangat pendek';
        } elseif ($z > -3 && $z <= -2) {
            return 'Pendek';
        } elseif ($z > -2 && $z < 3) {
            return 'Normal';
        } else {
            return 'Tinggi';
        }
    }

    private function cekKesamaanData($data)
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

    public function cekUlang()
    {
        $data = Dataset::all();
        $jumlah = Dataset::count();

        for ($i = 0; $i < $jumlah; $i++) {
            $id =  $data[$i]->id;
            $usia =  $data[$i]->usia;
            $bb =  $data[$i]->bb;
            $tb =  $data[$i]->tb;

            if ($usia <= 23) {
                $pengukuran = 'Telentang';
            } else if ($usia >= 25) {
                $pengukuran = 'Berdiri';
            } else {
                $pengukuran = array_rand(['Telentang', 'Berdiri']);
            }

            $jkarray = ['L', 'P'];
            $randomIndex = array_rand($jkarray);
            $jenis_kelamin = $jkarray[$randomIndex];

            if ($jenis_kelamin === 'L') {
                $lkdslaki = DB::table('lk_u_laki')->where('usia', $usia)->get()->toArray()[0];
                $min = collect($lkdslaki)['15th'] - 1.5;
                $max = collect($lkdslaki)['85th'] + 1.5;
                $lk = rand($min, $max);
            } else {
                $lkdspermpuan = DB::table('lk_u_perempuan')->where('usia', $usia)->get()->toArray()[0];
                $min = collect($lkdspermpuan)['15th'] - 1.5;
                $max = collect($lkdspermpuan)['85th'] + 1.5;
                $lk = rand($min, $max);
            }

            $zscoregizi = $this->DatasetM->getZscoreGizi($usia, $bb, $tb, $pengukuran, $jenis_kelamin);
            $statusgizi = $this->getKelasStatusGizi($zscoregizi);

            $zscoreberat = $this->DatasetM->getZscoreBerat($usia, $bb, $jenis_kelamin);
            $statusberat = $this->getKelasStatusBerat($zscoreberat);

            $zscoretinggi = $this->DatasetM->getZscoreTinggi($usia, $tb, $pengukuran, $jenis_kelamin);
            $statustinggi = $this->getKelasStatusTinggi($zscoretinggi);

            $statuslebarkepala = $this->DatasetM->getZscoreKepala($usia, $lk, $jenis_kelamin);

            $db['id'] = $id;
            $db['usia'] = $usia;
            $db['bb'] = $bb;
            $db['tb'] = $tb;
            $db['lk'] = $lk;
            $db['pengukuran'] = $pengukuran;
            $db['jenis_kelamin'] = $jenis_kelamin;

            $db['sberat'] = $statusberat;
            $db['stinggi'] = $statustinggi;
            $db['sgizi'] = $statusgizi;
            $db['skepala'] = $statuslebarkepala;

            Dataset::where('id', $id)->update($db);
            echo 'Sukses update data ke-' . $i . ' <br>';
        };
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Balita;
use App\Models\UkurBalita;
use App\Http\Controllers\KnnController;
use App\Models\Dataset;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UkurBalitaController extends Controller
{
    protected $UBm;
    public function __construct(UkurBalita $ukurBalita)
    {
        $this->UBm = $ukurBalita;
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // dd(UkurBalita::with('balita')->get()[0]->balita->nama);
        return view('ukurbalita.index', [
            'title' => 'Ukur Balita',
            'namabalita' => UkurBalita::with('balita')->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('ukurbalita.add', [
            'title' => 'Tambah Ukur Balita',
            'balita' => Balita::all(),
            'selectedBalita' => null,
            'bulan' => ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'],
            'pengukuran' => ['Telentang', 'Berdiri'],
        ]);
    }
    /**

     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate(
            [
                'pilih_balita' => 'required',
                'bb_ukur' => 'required|numeric|max:50|min:0',
                'tb_ukur' => 'required|numeric|max:140|min:10',
                'lk_ukur' => 'required|numeric|max:70|min:10',
                'bulan' => 'required',
                'pengukuran' => 'required',
            ],
            [
                'pilih_balita.required' => 'Harus memilih kolom Pilih Balita',
                'bb_ukur.required' => 'Kolom Berat Badan harus diisi',
                'bb_ukur.numeric' => 'Kolom Berat Badan harus diisi berupa angka (0, 1, 2, ... dst)',
                'bb_ukur.max' => 'Kolom Berat Badan melebihi batas maksimal! Maksimal = :max kg.',
                'bb_ukur.min' => 'Kolom Berat Badan melebihi batas minimal! Minimal = :min kg.',
                'tb_ukur.required' => 'Kolom Tinggi Badan harus diisi',
                'tb_ukur.numeric' => 'Kolom Tinggi Badan harus diisi berupa angka (0, 1, 2, ... dst)',
                'tb_ukur.max' => 'Kolom Tinggi Badan melebihi batas maksimal! Maksimal = :max cm.',
                'tb_ukur.min' => 'Kolom Tinggi Badan melebihi batas minimal! Minimal = :min cm.',
                'lk_ukur.required' => 'Kolom Lingkar Kepala harus diisi',
                'lk_ukur.numeric' => 'Kolom Lingkar Kepala harus diisi berupa angka (0, 1, 2, ... dst)',
                'lk_ukur.max' => 'Kolom Lingkar Kepala melebihi batas maksimal! Maksimal = :max cm.',
                'lk_ukur.min' => 'Kolom Lingkar Kepala melebihi batas minimal! Minimal = :min cm.',
                'pengukuran.required' => 'Harus memilih kolom Cara Pengukuran',
                'bulan.required' => 'Harus memilih kolom Bulan Pengukuran',

            ]
        );

        $validateData['id_balita'] = $request->pilih_balita;
        $validateData['jenis_kelamin'] = $request->jenis_kelamin === 'Laki-laki' ? 'L' : 'P';
        $validateData['usia_ukur'] = $request->usia_ukur;
        $validateData['tahun'] = $request->tahun;

        UkurBalita::create($validateData);
        Dataset::create([
            'usia' => $request['usia_ukur'],
            'bb' => $request['bb_ukur'],
            'tb' => $request['tb_ukur'],
            'lk' => $request['lk_ukur'],
            'pengukuran' => $request['pengukuran'],
            'jenis_kelamin' => $request['jenis_kelamin'] === 'Laki-laki' ? 'L' : 'P',
        ]);
        $Knn = new KnnController();
        $Knn->tentukanKelasBaru();

        return redirect('ukur-balita')->with('sukses', 'Data ukur balita baru berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(UkurBalita $ukur_balitum)
    {
        $data = UkurBalita::where('id_ukur', $ukur_balitum->id_ukur)->first();
        $k = 5;

        $data['class1'] = $this->customBgBerat($data['sberat']);
        $data['class2'] = $this->customBgTinggi($data['stinggi']);
        $data['class3'] = $this->customBgGizi($data['sgizi']);
        $data['class4'] = $this->customBgLingkar($data['skepala']);

        return view('ukurbalita.detail', [
            'title' => 'Detail Balita',
            'ukurbalita' => $data,
            'balita' => Balita::where('id', $ukur_balitum->id_balita)->first(),
            'class1' => $data['class1'],
            'class2' => $data['class2'],
            'class3' => $data['class3'],
            'class4' => $data['class4'],
            'saranb' => $this->saranberat($data['sberat']),
            'sarant' => $this->sarantinggi($data['stinggi']),
            'sarang' => $this->sarangizi($data['sgizi']),
            'berat' => $this->UBm->getJarakBerat($data['usia_ukur'], $data['bb_ukur'], $k),
            'tinggi' => $this->UBm->getJarakTinggi($data['usia_ukur'], $data['tb_ukur'], $k, $data['jenis_kelamin'], $data['pengukuran']),
            'lk' => $this->UBm->getJarakLK($data['usia_ukur'], $data['lk_ukur'], $k),
            'gizi' => $this->UBm->getJarakGizi($data['bb_ukur'], $data['tb_ukur'], $k, $data['jenis_kelamin'], $data['pengukuran']),
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(UkurBalita $ukur_balitum)
    {
        // dd(Balita::where('id', $ukur_balitum->id_balita)->first());
        return view('ukurbalita.edit', [
            'title' => 'Ubah Ukur Balita',
            'balita' => Balita::where('id', $ukur_balitum->id_balita)->first(),
            'ukurbalita' => $ukur_balitum,
            'bulan' => ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'],
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, UkurBalita $ukur_balitum)
    {
        $dataUkur = UkurBalita::findOrFail($ukur_balitum->id_ukur);
        $dataLama = $dataUkur->getAttributes();

        $validateData = $request->validate([
            'bb_ukur' => 'required|numeric|max:100',
            'tb_ukur' => 'required|numeric|max:500',
            'lk_ukur' => 'required|numeric|max:100',
            'bulan' => 'required',
        ]);

        $validateData = $request->all();
        $validateData['id_ukur'] = $ukur_balitum->id_ukur;

        $dataUkur->update($validateData);

        $dataUpdate = $dataUkur->getAttributes();

        $namaBalita = UkurBalita::select('ukur_balitas.*', 'balitas.nama')
            ->rightJoin('balitas', 'ukur_balitas.id_balita', '=', 'balitas.id')
            ->where('id_ukur', $validateData['id_ukur'])
            ->first()->nama;

        if ($dataLama != $dataUpdate) {
            // Jika ada perubahan, lakukan
            $this->klasifikasiUlang($validateData['id_ukur']);
            return redirect('ukur-balita')->with('sukses', 'Data ukur balita ' . $namaBalita . ' pada bulan ' . $dataUpdate['bulan'] . ' tahun ' . $dataUpdate['tahun'] . ' berhasil diubah!');
        } else {
            // Jika tidak ada perubahan, lakukan
            return redirect('ukur-balita')->with('normal', 'Tidak ada perubahan data ukur balita ' . $namaBalita . ' pada bulan ' . $dataUpdate['bulan'] . ' tahun ' . $dataUpdate['tahun'] . '!');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(UkurBalita $ukur_balitum)
    {
        $balita = UkurBalita::select('ukur_balitas.*', 'balitas.nama')
            ->leftJoin('balitas', 'ukur_balitas.id_balita', '=', 'balitas.id')
            ->where('id_ukur', $ukur_balitum->id_ukur)
            ->first();
        UkurBalita::destroy($ukur_balitum->id_ukur);
        return redirect('ukur-balita')->with('sukses', 'Data ukur balita ' . $balita->nama . ' pada bulan ' . $balita->bulan . ' tahun ' . $balita->tahun . ' berhasil dihapus!');
    }

    public function hitungusia()
    {
        $selectedBalitaId = request()->input('balita_id');
        // $balita = Balita::where('id', $selectedBalitaId)->first();
        $balita = Balita::find($selectedBalitaId);
        if ($balita) {
            // Ubah format tanggal menjadi objek DateTime
            $tglLahir = new \DateTime($balita->tgl_lahir);
            // Hitung usia dalam bulan
            $usiaBulan = $tglLahir->diff(new \DateTime())->y * 12 + $tglLahir->diff(new \DateTime())->m;
            echo $usiaBulan;
        } else {
            echo '';
        }
    }

    public function getJenisKelamin()
    {
        $selectedBalitaId = request()->input('balita_id');
        $balita = Balita::find($selectedBalitaId)->jenis_kelamin;

        if ($balita) {
            return $balita === 'L' ? 'Laki-laki' : 'Perempuan';
        } else {
            return '';
        }
    }

    private function saranberat($sb)
    {
        if ($sb == 'Sangat kurang') {
            return 'Pastikan balita mendapatkan makanan yang seimbang dan bergizi. Tambahkan makanan kaya kalori dan nutrisi ke dalam dietnya, seperti susu, daging, ikan, telur, buah-buahan, sayuran, biji-bijian, dan makanan berlemak sehat.
      <br>Berikan makanan penambah berat badan: Beberapa balita mungkin membutuhkan makanan penambah berat badan khusus.';
        } else if ($sb == 'Kurang') {
            return '<p>Pastikan makanan yang diberikan kepada balita adalah makanan yang seimbang dan bergizi. Sertakan makanan tinggi protein seperti daging, ikan, telur, dan kacang-kacangan. Selain itu, berikan juga buah-buahan, sayuran, dan biji-bijian sebagai sumber vitamin dan serat.</p>';
        } else if ($sb == 'Normal') {
            return '<p>Selalu perhatikan porsi makan balita dan pastikan tidak terlalu kecil atau terlalu besar. Porsi makan yang tepat akan membantu menjaga berat badan balita dalam rentang normal.</p>';
        } else {
            return '<p>Hindari makanan olahan, makanan cepat saji, camilan tinggi gula dan lemak, serta minuman manis.
      <br>Dorong balita untuk aktif bergerak dan bermain. Aktivitas fisik membantu membakar kalori dan memperbaiki keseimbangan energi dalam tubuh balita.</p>';
        }
    }

    private function sarantinggi($st)
    {
        if ($st == 'Sangat pendek') {
            return '<p>Pastikan balita mendapatkan nutrisi yang cukup untuk mendukung pertumbuhan tinggi badannya. Sertakan makanan yang kaya akan protein, kalsium, vitamin D, dan zat besi dalam dietnya. Misalnya, konsumsi daging, ikan, telur, produk susu, kacang-kacangan, sayuran hijau, dan biji-bijian.</p>';
        } else if ($st == 'Pendek') {
            return '<p>Pastikan balita mendapatkan makanan sehat secara teratur dan porsi yang cukup. Hindari makanan olahan, makanan cepat saji, dan camilan yang kurang bernutrisi. Fokus pada makanan segar, termasuk buah-buahan, sayuran, biji-bijian, dan sumber protein.</p>';
        } else if ($st == 'Normal') {
            return '<p>Pastikan untuk selalu menjaga pola makan balita secara teratur untuk mendapatkan tinggi badan ideal</p>';
        } else {
            return '<p>Meskipun tinggi badan yang tinggi bukan masalah, penting untuk memastikan bahwa berat badan balita tetap seimbang dengan tingginya. Jaga agar balita tidak mengalami kelebihan berat badan atau obesitas yang dapat berdampak negatif pada kesehatannya.</p>';
        }
    }

    private function sarangizi($sg)
    {
        if ($sg == 'Gizi buruk') {
            return '<p>Berikan makanan yang kaya akan protein, karbohidrat, lemak sehat, vitamin, dan mineral. Diskusikan dengan dokter atau ahli gizi untuk mendapatkan rekomendasi tentang jenis dan jumlah makanan yang sesuai.</p>';
        } else if ($sg == 'Gizi kurang') {
            return '<p>Pastikan balita mendapatkan asupan nutrisi yang cukup untuk memperbaiki status gizinya. Berikan makanan yang kaya akan protein, karbohidrat, lemak sehat, vitamin, dan mineral. Pilih makanan yang bervariasi seperti daging, ikan, telur, produk susu, sayuran, buah-buahan, dan biji-bijian.</p>';
        } else if ($sg == 'Gizi baik') {
            return '<p>Lanjutkan memberikan makanan yang seimbang dan bergizi kepada balita. Pastikan dia mendapatkan asupan nutrisi yang cukup dari berbagai kelompok makanan seperti sayuran, buah-buahan, biji-bijian, protein, dan produk susu. Variasikan jenis makanan yang diberikan agar balita mendapatkan berbagai nutrisi penting.</p>';
        } else if ($sg == 'Berisiko gizi lebih ') {
            return '<p>Lakukan pemantauan teratur terhadap berat badan, tinggi badan, dan pertumbuhan balita. Diskusikan hasil pemantauan dengan dokter atau petugas kesehatan untuk mendapatkan panduan yang tepat.</p>';
        } else if ($sg == 'Gizi lebih') {
            return '<p>Perhatikan ukuran porsi makanan yang diberikan kepada balita. Jangan memaksa balita untuk makan lebih dari yang dibutuhkan. Berikan porsi yang sesuai dengan usia dan kebutuhan balita. </p>';
        } else if ($sg == 'Obesitas') {
            return '<p>Segera berkonsultasi dengan dokter atau ahli gizi untuk mengevaluasi dan memantau status gizi balita secara teratur. Mereka akan memberikan panduan yang tepat berdasarkan kondisi dan kebutuhan balita.</p>';
        }
    }

    // private function klasifikasiUlang($id, $u, $bb, $tb, $lk ){
    private function klasifikasiUlang($id)
    {
        $dataDiubah = UkurBalita::where('id_ukur', $id)->first();
        $udb = $dataDiubah->usia_ukur;
        $bdb = $dataDiubah->bb_ukur;
        $tdb = $dataDiubah->tb_ukur;
        $lkdb = $dataDiubah->lk_ukur;
        $pengukuran = $dataDiubah->pengukuran;
        $jenis_kelamin = $dataDiubah->jenis_kelamin;

        $query = Dataset::where('jenis_kelamin', $jenis_kelamin)
            ->where('pengukuran', $pengukuran)
            ->get()->toArray();


        $jarakberat = [];
        $jaraktinggi = [];
        $jarakgizi = [];
        $jaraklk = [];

        foreach ($query as $key) {
            $jarakberat[$key['id']] = sqrt(pow($key['usia'] - $udb, 2) + pow($key['bb'] - $bdb, 2));
            $jaraktinggi[$key['id']] = sqrt(pow($key['usia'] - $udb, 2) + pow($key['tb'] - $tdb, 2));
            $jarakgizi[$key['id']] = sqrt(pow($key['bb'] - $bdb, 2) + pow($key['tb'] - $tdb, 2));
            $jaraklk[$key['id']] = sqrt(pow($key['usia'] - $udb, 2) + pow($key['lk'] - $lkdb, 2));
        }

        $k = 5;

        $knnberat = collect($jarakberat)->sort()->take($k);
        $knntinggi = collect($jaraktinggi)->sort()->take($k);
        $knngizi = collect($jarakgizi)->sort()->take($k);
        $knnlk = collect($jaraklk)->sort()->take($k);

        foreach ($knnberat as $kb => $value) {
            $statusberat = Dataset::where('id', $kb)->value('sberat');
            if (isset($totalstatusberat[$statusberat])) {
                $totalstatusberat[$statusberat]++;
            } else {
                $totalstatusberat[$statusberat] = 1;
            }
        }
        foreach ($knntinggi as $kt => $value) {
            $statustinggi = Dataset::where('id', $kt)->value('stinggi');
            if (isset($totalstatustinggi[$statustinggi])) {
                $totalstatustinggi[$statustinggi]++;
            } else {
                $totalstatustinggi[$statustinggi] = 1;
            }
        }
        foreach ($knngizi as $kg => $value) {
            $statusgizi = Dataset::where('id', $kg)->value('sgizi');
            if (isset($totalstatusgizi[$statusgizi])) {
                $totalstatusgizi[$statusgizi]++;
            } else {
                $totalstatusgizi[$statusgizi] = 1;
            }
        }
        foreach ($knnlk as $klk => $value) {
            $statuslk = Dataset::where('id', $klk)->value('skepala');
            if (isset($totalstatuslk[$statuslk])) {
                $totalstatuslk[$statuslk]++;
            } else {
                $totalstatuslk[$statuslk] = 1;
            }
        }

        $sberat = collect($totalstatusberat)->search(max($totalstatusberat));
        $stinggi = collect($totalstatustinggi)->search(max($totalstatustinggi));
        $sgizi = collect($totalstatusgizi)->search(max($totalstatusgizi));
        $slkepala = collect($totalstatuslk)->search(max($totalstatuslk));

        UkurBalita::where('id_ukur', $id)->update([
            'sberat' => $sberat,
            'stinggi' => $stinggi,
            'sgizi' => $sgizi,
            'skepala' => $slkepala,
        ]);

        $dataset = [
            'usia' => $udb,
            'bb' => $bdb,
            'tb' => $tdb,
            'lk' => $lkdb,
            'pengukuran' => $pengukuran,
            'jenis_kelamin' => $jenis_kelamin,
            'sberat' => $sberat,
            'stinggi' => $stinggi,
            'sgizi' => $sgizi,
            'skepala' => $slkepala,
        ];

        $datasetModel = new Dataset();
        $datasetController = new DatasetController($datasetModel);
        $cekKesamaanData = $datasetController->cekKesamaanData($dataset);
        if (!$cekKesamaanData) {
            Dataset::create($dataset);
        }
    }

    private function customBgGizi($gizi)
    {
        if ($gizi == 'Gizi buruk' || $gizi == 'Gizi lebih' || $gizi == 'Obesitas') {
            return 'bg-gradient-danger text-light';
        } else if ($gizi == 'Gizi kurang' || $gizi == 'Berisiko gizi lebih') {
            return 'bg-gradient-warning text-dark';
        } else {
            return 'bg-gradient-success text-light';
        }
    }

    private function customBgBerat($berat)
    {
        if ($berat == 'Risiko BB lebih' || $berat == 'Sangat kurang') {
            return 'bg-gradient-danger text-light';
        } else if ($berat == 'Kurang') {
            return 'bg-gradient-warning text-dark';
        } else {
            return 'bg-gradient-success text-light';
        }
    }

    private function customBgTinggi($tinggi)
    {
        if ($tinggi == 'Sangat pendek' || $tinggi == 'Tinggi') {
            return 'bg-gradient-danger text-light';
        } else if ($tinggi == 'Pendek') {
            return 'bg-gradient-warning text-dark';
        } else {
            return 'bg-gradient-success text-light';
        }
    }

    private function customBgLingkar($lingkar)
    {
        if ($lingkar == 'Terlalu kecil' || $lingkar == 'Terlalu besar') {
            return 'bg-gradient-danger text-light';
        } else {
            return 'bg-gradient-success text-light';
        }
    }
}

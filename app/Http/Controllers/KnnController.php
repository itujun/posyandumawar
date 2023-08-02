<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UkurBalita;
use App\Models\Dataset;

class KnnController extends Controller
{
    // Tahap 1
    public function tentukanK()
    {
        return $k = 5;
    }

    // Tahap 2
    public function hitungJarak()
    {
        $databaru = collect(UkurBalita::all())->last();
        $id_ukur = $databaru->id_ukur;
        $usiaDataBaru = $databaru->usia_ukur;
        $beratDataBaru = $databaru->bb_ukur;
        $tinggiDataBaru = $databaru->tb_ukur;
        $lingkarDataBaru = $databaru->lk_ukur;
        $jkDataBaru = $databaru->jenis_kelamin;
        $pengukuranDataBaru = $databaru->pengukuran;

        $query = Dataset::where('jenis_kelamin', $jkDataBaru)
            ->where('pengukuran', $pengukuranDataBaru)
            ->get()->toArray();

        $jarakberat = [];
        $jaraktinggi = [];
        $jarakgizi = [];
        $jaraklk = [];


        foreach ($query as $key) {
            $jarakberat[$key['id']] = sqrt(pow($key['usia'] - $usiaDataBaru, 2) + pow($key['bb'] - $beratDataBaru, 2));
            $jaraktinggi[$key['id']] = sqrt(pow($key['usia'] - $usiaDataBaru, 2) + pow($key['tb'] - $tinggiDataBaru, 2));
            $jarakgizi[$key['id']] = sqrt(pow($key['bb'] - $beratDataBaru, 2) + pow($key['tb'] - $tinggiDataBaru, 2));
            $jaraklk[$key['id']] = sqrt(pow($key['usia'] - $usiaDataBaru, 2) + pow($key['lk'] - $lingkarDataBaru, 2));
        }

        $hasil =  [$jarakberat, $jaraktinggi, $jarakgizi, $jaraklk, $id_ukur];
        return $hasil;
    }

    // Tahap 3
    public function indentifikasiKNN()
    {
        $data = $this->hitungJarak();
        $k = $this->tentukanK();

        $knnberat = collect($data[0])->sort()->take($k);
        $knntinggi = collect($data[1])->sort()->take($k);
        $knngizi = collect($data[2])->sort()->take($k);
        $knnlk = collect($data[3])->sort()->take($k);

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

        return [$totalstatusberat, $totalstatustinggi, $totalstatusgizi, $totalstatuslk, $data[4]];
    }

    // Tahap 4
    public function tentukanKelasBaru()
    {
        $data = $this->indentifikasiKNN();
        $sberat = collect($data[0])->search(max($data[0]));
        $stinggi = collect($data[1])->search(max($data[1]));
        $sgizi = collect($data[2])->search(max($data[2]));
        $slkepala = collect($data[3])->search(max($data[3]));

        $dataset = collect(Dataset::all())->last();
        UkurBalita::where('id_ukur', $data[4])->update([
            'sberat' => $sberat,
            'stinggi' => $stinggi,
            'sgizi' => $sgizi,
            'skepala' => $slkepala,
        ]);

        Dataset::where('id', $dataset['id'])->update([
            'sberat' => $sberat,
            'stinggi' => $stinggi,
            'sgizi' => $sgizi,
            'skepala' => $slkepala,
        ]);
    }
}

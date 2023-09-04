<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Dataset extends Model
{
    use HasFactory;

    protected $primaryKey = 'id_dataset';
    protected $guarded = ['id'];

    public function getZscoreGizi($usia, $berat, $tinggi, $pengukuran, $jk)
    {
        $tingginya = round($tinggi * 2) / 2;
        if ($usia <= 24 && $pengukuran == 'Telentang' && $jk == 'L') {
            $usianya = 1;
            $dataDB = collect(DB::table('bb_tb_laki')->where('usia', $usianya)->where('tb', $tingginya)->first())->toArray();
            if ($berat < $dataDB['median']) {
                $zscore = ($berat - $dataDB['median']) / ($dataDB['median'] - $dataDB['-1sd']);
                return $zscore;
            } else {
                $zscore = ($berat - $dataDB['median']) / ($dataDB['+1sd'] - $dataDB['median']);
                return $zscore;
            }
        } elseif ($usia >= 24 && $pengukuran == 'Berdiri' && $jk == 'L') {
            $usianya = 2;
            $dataDB = collect(DB::table('bb_tb_laki')->where('usia', $usianya)->where('tb', $tingginya)->first())->toArray();
            if ($berat < $dataDB['median']) {
                $zscore = ($berat - $dataDB['median']) / ($dataDB['median'] - $dataDB['-1sd']);
                return $zscore;
            } else {
                $zscore = ($berat - $dataDB['median']) / ($dataDB['+1sd'] - $dataDB['median']);
                return $zscore;
            }
        } elseif ($usia <= 24 && $pengukuran == 'Telentang' && $jk == 'P') {
            $usianya = 1;
            $dataDB = collect(DB::table('bb_tb_perempuan')->where('usia', $usianya)->where('tb', $tingginya)->first())->toArray();
            if ($berat < $dataDB['median']) {
                $zscore = ($berat - $dataDB['median']) / ($dataDB['median'] - $dataDB['-1sd']);
                return $zscore;
            } else {
                $zscore = ($berat - $dataDB['median']) / ($dataDB['+1sd'] - $dataDB['median']);
                return $zscore;
            }
        } elseif ($usia >= 24 && $pengukuran == 'Berdiri' && $jk == 'P') {
            $usianya = 2;
            $dataDB = collect(DB::table('bb_tb_perempuan')->where('usia', $usianya)->where('tb', $tingginya)->first())->toArray();
            if ($berat < $dataDB['median']) {
                $zscore = ($berat - $dataDB['median']) / ($dataDB['median'] - $dataDB['-1sd']);
                return $zscore;
            } else {
                $zscore = ($berat - $dataDB['median']) / ($dataDB['+1sd'] - $dataDB['median']);
                return $zscore;
            }
        }
    }

    public function getZscoreBerat($usia, $berat, $jk)
    {
        if ($jk == 'L') {
            $dataDB = collect(DB::table('bb_u_laki')->where('usia', $usia)->first())->toArray();
            if ($berat < $dataDB['median']) {
                $zscore = ($berat - $dataDB['median']) / ($dataDB['median'] - $dataDB['-1sd']);
                return $zscore;
            } else {
                $zscore = ($berat - $dataDB['median']) / ($dataDB['+1sd'] - $dataDB['median']);
                return $zscore;
            }
        } elseif ($jk == 'P') {
            $dataDB = collect(DB::table('bb_u_perempuan')->where('usia', $usia)->first())->toArray();
            if ($berat < $dataDB['median']) {
                $zscore = ($berat - $dataDB['median']) / ($dataDB['median'] - $dataDB['-1sd']);
                return $zscore;
            } else {
                $zscore = ($berat - $dataDB['median']) / ($dataDB['+1sd'] - $dataDB['median']);
                return $zscore;
            }
        } else {
            return 'Jenis kelamin tidak diketahui';
        }
    }

    public function getZscoreTinggi($usia, $tinggi, $pengukuran, $jk)
    {
        if ($jk == 'L') {
            $dataDB = DB::table('tb_u_laki');
            if ($usia <= 23) {
                $dataDB23 = collect($dataDB->where('usia', $usia)->first())->toArray();
                if ($tinggi < $dataDB23['median']) {
                    $zscore = ($tinggi - $dataDB23['median']) / ($dataDB23['median'] - $dataDB23['-1sd']);
                    return $zscore;
                } else {
                    $zscore = ($tinggi - $dataDB23['median']) / ($dataDB23['+1sd'] - $dataDB23['median']);
                    return $zscore;
                }
            } elseif ($usia >= 25) {
                $dataDB23 = collect($dataDB->where('usia', $usia)->first())->toArray();
                if ($tinggi < $dataDB23['median']) {
                    $zscore = ($tinggi - $dataDB23['median']) / ($dataDB23['median'] - $dataDB23['-1sd']);
                    return $zscore;
                } else {
                    $zscore = ($tinggi - $dataDB23['median']) / ($dataDB23['+1sd'] - $dataDB23['median']);
                    return $zscore;
                }
            } elseif ($usia == 24 && $pengukuran == 'Telentang') {
                $usianya = '24t';
                $dataDBT = collect($dataDB->where('usia', $usianya)->first())->toArray();
                if ($tinggi < $dataDBT['median']) {
                    $zscore = ($tinggi - $dataDBT['median']) / ($dataDBT['median'] - $dataDBT['-1sd']);
                    return $zscore;
                } else {
                    $zscore = ($tinggi - $dataDBT['median']) / ($dataDBT['+1sd'] - $dataDBT['median']);
                    return $zscore;
                }
            } elseif ($usia == 24 && $pengukuran == 'Berdiri') {
                $usianya = '24b';
                $dataDBT = collect($dataDB->where('usia', $usianya)->first())->toArray();
                if ($tinggi < $dataDBT['median']) {
                    $zscore = ($tinggi - $dataDBT['median']) / ($dataDBT['median'] - $dataDBT['-1sd']);
                    return $zscore;
                } else {
                    $zscore = ($tinggi - $dataDBT['median']) / ($dataDBT['+1sd'] - $dataDBT['median']);
                    return $zscore;
                }
            } else {
                return 'Gagal menentukan zscore';
            }
        } elseif ($jk == 'P') {
            $dataDB = DB::table('tb_u_perempuan');
            if ($usia <= 23) {
                $dataDB23 = collect($dataDB->where('usia', $usia)->first())->toArray();
                if ($tinggi < $dataDB23['median']) {
                    $zscore = ($tinggi - $dataDB23['median']) / ($dataDB23['median'] - $dataDB23['-1sd']);
                    return $zscore;
                } else {
                    $zscore = ($tinggi - $dataDB23['median']) / ($dataDB23['+1sd'] - $dataDB23['median']);
                    return $zscore;
                }
            } elseif ($usia >= 25) {
                $dataDB23 = collect($dataDB->where('usia', $usia)->first())->toArray();
                if ($tinggi < $dataDB23['median']) {
                    $zscore = ($tinggi - $dataDB23['median']) / ($dataDB23['median'] - $dataDB23['-1sd']);
                    return $zscore;
                } else {
                    $zscore = ($tinggi - $dataDB23['median']) / ($dataDB23['+1sd'] - $dataDB23['median']);
                    return $zscore;
                }
            } elseif ($usia == 24 && $pengukuran == 'Telentang') {
                $usianya = '24t';
                $dataDBT = collect($dataDB->where('usia', $usianya)->first())->toArray();
                if ($tinggi < $dataDBT['median']) {
                    $zscore = ($tinggi - $dataDBT['median']) / ($dataDBT['median'] - $dataDBT['-1sd']);
                    return $zscore;
                } else {
                    $zscore = ($tinggi - $dataDBT['median']) / ($dataDBT['+1sd'] - $dataDBT['median']);
                    return $zscore;
                }
            } elseif ($usia == 24 && $pengukuran == 'Berdiri') {
                $usianya = '24b';
                $dataDBT = collect($dataDB->where('usia', $usianya)->first())->toArray();
                if ($tinggi < $dataDBT['median']) {
                    $zscore = ($tinggi - $dataDBT['median']) / ($dataDBT['median'] - $dataDBT['-1sd']);
                    return $zscore;
                } else {
                    $zscore = ($tinggi - $dataDBT['median']) / ($dataDBT['+1sd'] - $dataDBT['median']);
                    return $zscore;
                }
            } else {
                return 'Gagal menentukan zscore';
            }
        }
    }

    public function getZscoreKepala($usia, $lingkar, $jk)
    {
        if ($jk == 'L') {
            $dataDB = collect(DB::table('lk_u_laki')->where('usia', $usia)->first())->toArray();
            if ($lingkar > $dataDB['85th']) {
                return 'Terlalu besar';
            } elseif ($lingkar < $dataDB['15th']) {
                return 'Terlalu kecil';
            } else {
                return 'Normal';
            }
        } elseif ($jk == 'P') {
            $dataDB = collect(DB::table('lk_u_perempuan')->where('usia', $usia)->first())->toArray();
            if ($lingkar > $dataDB['85th']) {
                return 'Terlalu besar';
            } elseif ($lingkar < $dataDB['15th']) {
                return 'Terlalu kecil';
            } else {
                return 'Normal';
            }
        } else {
            return 'Gagal menentukan kelas Lingkar Kepala';
        }
    }
}

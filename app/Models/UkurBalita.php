<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UkurBalita extends Model
{
    use HasFactory;

    protected $guarded = ['id_ukur'];
    protected $primaryKey = 'id_ukur';

    public function balita()
    {
        return $this->belongsTo(Balita::class, 'id_balita', 'id');
    }

    public function getJarakBerat($usia, $bb, $k, $jk, $p)
    {
        $query = 'SQRT(POW((usia - ' . $usia . '), 2) + POW((bb - ' . $bb . '), 2))';
        $res = Dataset::where('jenis_kelamin', $jk)
            ->where('pengukuran', $p)
            ->select('id', 'usia', 'bb', 'sberat')
            ->selectRAW($query . 'AS jarak')
            ->orderBy('jarak', 'asc')
            ->limit($k)
            ->get();
        return $res;
    }

    public function getJarakTinggi($usia, $tb, $k, $jk, $p)
    {
        $query = 'SQRT(POW((usia - ' . $usia . '), 2) + POW((tb - ' . $tb . '), 2))';
        $res = Dataset::where('jenis_kelamin', $jk)
            ->where('pengukuran', $p)
            ->select('id', 'usia', 'tb', 'jenis_kelamin', 'pengukuran', 'stinggi')
            ->selectRAW($query . 'AS jarak')
            ->orderBy('jarak', 'asc')
            ->limit($k)
            ->get();
        return $res;
    }

    public function getJarakGizi($bb, $tb, $k, $jk, $p)
    {
        $query = 'SQRT(POW((bb - ' . $bb . '), 2) + POW((tb - ' . $tb . '), 2))';
        $res = Dataset::where('jenis_kelamin', $jk)
            ->where('pengukuran', $p)
            ->select('id', 'bb', 'tb', 'jenis_kelamin', 'pengukuran', 'sgizi')
            ->selectRAW($query . 'AS jarak')
            ->orderBy('jarak', 'asc')
            ->limit($k)
            ->get();
        return $res;
    }

    public function getJarakLK($usia, $lk, $k, $jk)
    {
        $query = 'SQRT(POW((usia - ' . $usia . '), 2) + POW((lk - ' . $lk . '), 2))';
        $res = Dataset::where('jenis_kelamin', $jk)
            ->select('id', 'usia', 'lk', 'skepala')
            ->selectRAW($query . 'AS jarak')
            ->orderBy('jarak', 'asc')
            ->limit($k)
            ->get();
        return $res;
    }
}

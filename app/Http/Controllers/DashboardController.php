<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Dataset;
use App\Models\Balita;
use App\Models\UkurBalita;

class DashboardController extends Controller
{
    public function index()
    {
        return view('admin.dashboard', [
            'title' => 'Dashboard',
            'totaldataset' => Dataset::count(),
            'totalbalita' => Balita::count(),
            'totalukurbalita' => UkurBalita::count(),

            'totalsberatskurang' => UkurBalita::where('sberat', 'Sangat kurang')->count(),
            'totalsberatkurang' => UkurBalita::where('sberat', 'Kurang')->count(),
            'totalsberatnormal' => UkurBalita::where('sberat', 'Normal')->count(),
            'totalsberatrbblebih' => UkurBalita::where('sberat', 'Risiko BB lebih')->count(),

            'totalstinggispendek' => UkurBalita::where('stinggi', 'Sangat pendek')->count(),
            'totalstinggipendek' => UkurBalita::where('stinggi', 'Pendek')->count(),
            'totalstingginormal' => UkurBalita::where('stinggi', 'Normal')->count(),
            'totalstinggitinggi' => UkurBalita::where('stinggi', 'Tinggi')->count(),

            'totalsgizigburuk' => UkurBalita::where('sgizi', 'Gizi buruk')->count(),
            'totalsgizigkurang' => UkurBalita::where('sgizi', 'Gizi kurang')->count(),
            'totalsgizigbaik' => UkurBalita::where('sgizi', 'Gizi baik')->count(),
            'totalsgizigblebih' => UkurBalita::where('sgizi', 'Berisiko gizi lebih')->count(),
            'totalsgiziglebih' => UkurBalita::where('sgizi', 'Gizi lebih')->count(),
            'totalsgizigobesitas' => UkurBalita::where('sgizi', 'Obesitas')->count(),

            'totalskepalakecil' => UkurBalita::where('skepala', 'Terlalu kecil')->count(),
            'totalskepalanormal' => UkurBalita::where('skepala', 'Normal')->count(),
            'totalskepalabesar' => UkurBalita::where('skepala', 'Terlalu besar')->count(),

        ]);
    }
}

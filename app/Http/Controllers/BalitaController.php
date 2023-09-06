<?php

namespace App\Http\Controllers;

use App\Models\Balita;
use App\Models\UkurBalita;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Date;
use Carbon\Carbon; // Digunakan untuk manipulasi tanggal

class BalitaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('balita.index', [
            'title' => 'Data Balita',
            'balita' => Balita::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('balita.add', [
            'title' => 'Tambah Balita'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate(
            [
                'nik' => 'required|numeric|digits:16',
                'nama' => 'required',
                'tgl_lahir' => 'required|before_or_equal:' . Carbon::now()->format('Y-m-d'),
                'jenis_kelamin' => 'required',
                'nama_ibu' => 'required',
                'alamat' => 'required',
            ],
            [
                'nik.required' => 'Kolom NIK harus diisi',
                'nik.numeric' => 'Kolom NIK harus diisi berupa angka (0, 1, 2, ... dst)',
                'nik.digits' => 'Kolom NIK harus berisi :digits digit.',
                'tgl_lahir.before_or_equal' => 'Tanggal lahir tidak boleh melebihi tanggal saat ini.',
                'jenis_kelamin.required' => 'Kolom Jenis Kelamin harus diisi.',
            ]
        );


        Balita::create($validateData);

        $balita = Balita::all()->last()->nama;

        return redirect('balita')->with('sukses', 'Balita ' . $balita . ' berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Balita $balitum)
    {
        $balita = Balita::where('id_balita', $balitum->id_balita)->first();
        return json_encode($balita);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Balita $balitum)
    {
        return view('balita.edit', [
            'title' => 'Ubah Balita',
            'balita' => $balitum,
            'jk' => ['P', 'L']
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Balita $balitum)
    {
        $dataBalita = Balita::findOrFail($balitum->id_balita);
        $dataLama = $dataBalita->getAttributes();

        $validateData = $request->validate([
            'nik' => 'required|numeric|min:15',
            'nama' => 'required',
            'tgl_lahir' => 'required',
            'jenis_kelamin' => 'required',
            'nama_ibu' => 'required',
            'alamat' => 'required',
        ]);

        $dataBalita->update($validateData);
        $dataBaru = $dataBalita->getAttributes();
        if ($dataBaru != $dataLama) {
            return redirect('balita')->with('sukses', 'Data balita ' . $dataBaru['nama'] . ' berhasil diperbarui!');
        } else {
            return redirect('balita')->with('normal', 'Tidak ada perubahan pada data balita ' . $dataBaru['nama']);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Balita $balitum)
    {
        $balita = Balita::where('id_balita', $balitum->id_balita)->first()->nama;
        UkurBalita::where('id_balita', $balitum->id_balita)->delete();
        Balita::destroy($balitum->id_balita);
        return redirect('balita')->with('sukses', 'Balita ' . $balita . ' berhasil dihapus!');
    }
}

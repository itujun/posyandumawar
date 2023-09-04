<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UkurBalita;
use App\Models\Balita;

class UserController extends Controller
{
    public function index()
    {
        $balita = UkurBalita::with('balita')->where('id_balita', 28)->get();
        return view('user.dashboard', [
            'title' => 'Dashboard',
            'nama' => Balita::where('id_balita', 28)->first()->nama,
            'balita' => $balita->toArray(),
            'saranBerat' => $this->saranBerat($balita->last()->sberat),
            'saranTinggi' => $this->saranTinggi($balita->last()->stinggi),
            'saranKepala' => $this->saranKepala($balita->last()->skepala),
            'saranGizi' => $this->saranGizi($balita->last()->sgizi),
        ]);
    }

    private function saranBerat($sberat)
    {
        if ($sberat == 'Sangat kurang') {
            return 'Pastikan balita mendapatkan makanan yang seimbang dan bergizi. Tambahkan makanan kaya kalori dan nutrisi ke dalam dietnya, seperti susu, daging, ikan, telur, buah-buahan, sayuran, biji-bijian, dan makanan berlemak sehat.
      <br>Berikan makanan penambah berat badan: Beberapa balita mungkin membutuhkan makanan penambah berat badan khusus.';
        } else if ($sberat == 'Kurang') {
            return '<p>Pastikan makanan yang diberikan kepada balita adalah makanan yang seimbang dan bergizi. Sertakan makanan tinggi protein seperti daging, ikan, telur, dan kacang-kacangan. Selain itu, berikan juga buah-buahan, sayuran, dan biji-bijian sebagai sumber vitamin dan serat.</p>';
        } else if ($sberat == 'Normal') {
            return '<p>Selalu perhatikan porsi makan balita dan pastikan tidak terlalu kecil atau terlalu besar. Porsi makan yang tepat akan membantu menjaga berat badan balita dalam rentang normal.</p>';
        } else {
            return '<p>Hindari makanan olahan, makanan cepat saji, camilan tinggi gula dan lemak, serta minuman manis.
      <br>Dorong balita untuk aktif bergerak dan bermain. Aktivitas fisik membantu membakar kalori dan memperbaiki keseimbangan energi dalam tubuh balita.</p>';
        }
    }

    private function saranTinggi($stinggi)
    {
        if ($stinggi == 'Sangat pendek') {
            return '<p>Pastikan balita mendapatkan nutrisi yang cukup untuk mendukung pertumbuhan tinggi badannya. Sertakan makanan yang kaya akan protein, kalsium, vitamin D, dan zat besi dalam dietnya. Misalnya, konsumsi daging, ikan, telur, produk susu, kacang-kacangan, sayuran hijau, dan biji-bijian.</p>';
        } else if ($stinggi == 'Pendek') {
            return '<p>Pastikan balita mendapatkan makanan sehat secara teratur dan porsi yang cukup. Hindari makanan olahan, makanan cepat saji, dan camilan yang kurang bernutrisi. Fokus pada makanan segar, termasuk buah-buahan, sayuran, biji-bijian, dan sumber protein.</p>';
        } else if ($stinggi == 'Normal') {
            return '<p>Pastikan untuk selalu menjaga pola makan balita secara teratur untuk mendapatkan tinggi badan ideal</p>';
        } else {
            return '<p>Meskipun tinggi badan yang tinggi bukan masalah, penting untuk memastikan bahwa berat badan balita tetap seimbang dengan tingginya. Jaga agar balita tidak mengalami kelebihan berat badan atau obesitas yang dapat berdampak negatif pada kesehatannya.</p>';
        }
    }

    private function saranKepala($skepala)
    {
        if ($skepala == 'Terlalu kecil') {
            return '<p>Perhatikan asupan makanan balita dan pastikan dia mendapatkan nutrisi yang cukup dari berbagai kelompok makanan. Malnutrisi dapat mempengaruhi pertumbuhan otak dan lingkar kepala balita.</p>';
        } else if ($skepala == 'Terlalu besar') {
            return '<p>Pastikan balita mendapatkan asupan nutrisi yang tepat untuk mendukung pertumbuhan yang sehat. Pemberian ASI atau makanan tambahan yang tepat dan bergizi sangat penting dalam tahap pertumbuhan ini.</p>';
        } else {
            return '<p>Teruskan memantau pertumbuhan balita dengan mengukur berat badan, tinggi badan, dan lingkar kepala secara teratur.</p>';
        }
    }

    private function saranGizi($sgizi)
    {
        if ($sgizi == 'Gizi buruk') {
            return '<p>Berikan makanan yang kaya akan protein, karbohidrat, lemak sehat, vitamin, dan mineral. Diskusikan dengan dokter atau ahli gizi untuk mendapatkan rekomendasi tentang jenis dan jumlah makanan yang sesuai.</p>';
        } else if ($sgizi == 'Gizi kurang') {
            return '<p>Pastikan balita mendapatkan asupan nutrisi yang cukup untuk memperbaiki status gizinya. Berikan makanan yang kaya akan protein, karbohidrat, lemak sehat, vitamin, dan mineral. Pilih makanan yang bervariasi seperti daging, ikan, telur, produk susu, sayuran, buah-buahan, dan biji-bijian.</p>';
        } else if ($sgizi == 'Gizi normal') {
            return '<p>Lanjutkan memberikan makanan yang seimbang dan bergizi kepada balita. Pastikan dia mendapatkan asupan nutrisi yang cukup dari berbagai kelompok makanan seperti sayuran, buah-buahan, biji-bijian, protein, dan produk susu. Variasikan jenis makanan yang diberikan agar balita mendapatkan berbagai nutrisi penting.</p>';
        } else if ($sgizi == 'Berisiko gizi lebih ') {
            return '<p>Lakukan pemantauan teratur terhadap berat badan, tinggi badan, dan pertumbuhan balita. Diskusikan hasil pemantauan dengan dokter atau petugas kesehatan untuk mendapatkan panduan yang tepat.</p>';
        } else if ($sgizi == 'Berisiko gizi lebih') {
            return '<p>Perhatikan ukuran porsi makanan yang diberikan kepada balita. Jangan memaksa balita untuk makan lebih dari yang dibutuhkan. Berikan porsi yang sesuai dengan usia dan kebutuhan balita. </p>';
        } else if ($sgizi == 'Obesitas') {
            return '<p>Segera berkonsultasi dengan dokter atau ahli gizi untuk mengevaluasi dan memantau status gizi balita secara teratur. Mereka akan memberikan panduan yang tepat berdasarkan kondisi dan kebutuhan balita.</p>';
        }
    }
}

# POSYANDU MAWAR — Klasifikasi Status Gizi Balita (K-NN)

Aplikasi berbasis web untuk membantu **kader Posyandu Mawar (Bibis Tama, Surabaya)** dalam:
- mengelola data balita,
- mencatat hasil pengukuran antropometri,
- dan **mengklasifikasikan status gizi balita** menggunakan metode **K-Nearest Neighbor (K-NN)**.

## Gambaran Umum
Penentuan status gizi dilakukan berdasarkan parameter:
- Usia (bulan)
- Jenis kelamin
- Berat badan (kg)
- Tinggi/Panjang badan (cm)
- Lingkar kepala (cm)

Hasil klasifikasi yang ditampilkan mencakup:
- Status berat badan
- Status tinggi badan
- Status lingkar kepala
- Status gizi (mis. gizi buruk/kurang/baik, berisiko gizi lebih, gizi lebih, obesitas)

Aplikasi ini dibuat untuk kebutuhan tugas akhir/skripsi dan berjalan dengan baik pada lingkungan lokal (localhost).

---

## Fitur

### Role: Admin
- Dashboard ringkasan (statistik data)
- CRUD **Data Balita**
- CRUD **Dataset** (data latih/rujukan)
- CRUD **Data Ukur Balita**
- Proses klasifikasi otomatis ketika input ukur balita dilakukan
- Melihat detail hasil ukur/hasil klasifikasi

### Role: User (viewer)
- Melihat daftar data balita & ringkasan hasil pengukuran terakhir (termasuk saran/info dari hasil terakhir)

---

## Teknologi
- **Laravel 10**
- **PHP 8.1+**
- **Vite** (frontend tooling)
- **yajra/laravel-datatables** (tabel & listing data)

---

## Prasyarat
Pastikan sudah terinstall:
- PHP >= 8.1
- Composer
- Node.js & npm (untuk Vite)
- MySQL/MariaDB
- Web server lokal (disarankan: **XAMPP** atau **Laragon**)

---

## Instalasi & Menjalankan Aplikasi (Local)

### 1) Clone repository
```bash
git clone https://github.com/itujun/posyandumawar.git
cd posyandumawar

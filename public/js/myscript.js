$(document).ready(function() {

    // notif login
    const notif = $('.notif').data('notif');
    if (notif) {
        Swal.fire({
            position: 'top',
            title: notif,
            showConfirmButton: false,
            timer: 2000
        })
    }

    // notif sukses tambah data
    const notifTambah = $('.notif-tambah').data('notif')
    if (notifTambah) {
        Swal.fire(
            'Sukses!',
            notifTambah,
            'success'
        )
    }

    // notif normal (tidak ada perubahan data)
    const notifNormal = $('.notif-tetap').data('notif');
    if (notifNormal) {
        Swal.fire(
            'Info!',
            notifNormal,
            'info'
        )
    }

    // tombolHapus
    $(document).on('click', '.tombolHapus', function(e) {

        e.preventDefault();

        const balita = $(this).data('nama');
        const bulan = $(this).data('bulan');
        const tahun = $(this).data('tahun');
        const form = $(this).closest('form');
        const usia = $(this).data('usia');
        const bb = $(this).data('bb');
        const tb = $(this).data('tb');
        const lk = $(this).data('lk');

        const swalWithBootstrapButtons = Swal.mixin({
            customClass: {
                confirmButton: 'btn btn-success',
                cancelButton: 'btn btn-danger mr-2'
            },
            buttonsStyling: false
        });

        if (bb) {
            swalWithBootstrapButtons.fire({
                title: 'Hapus data?',
                text: "Dataset usia " + usia + " bulan, berat badan " + bb + "kg, tinggi badan " + tb + "cm, lingkar kepala " + lk + "cm hendak dihapus?",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Iya',
                cancelButtonText: 'Tidak',
                reverseButtons: true,
            }).then((result) => {
                if (result.isConfirmed) {
                    form.submit();
                } else if (
                    /* Read more about handling dismissals below */
                    result.dismiss === Swal.DismissReason.cancel
                ) {
                    swalWithBootstrapButtons.fire(
                        'Aksi dibatalkan.',
                        "Dataset usia " + usia + " bulan, berat badan " + bb + "kg, tinggi badan " + tb + "cm, lingkar kepala " + lk + "cm tidak terhapus.",
                        'error'
                    )
                }
            })
        } else if (bulan) {
            swalWithBootstrapButtons.fire({
                title: 'Hapus data?',
                text: "Data ukur balita " + balita + " pada bulan " + bulan + " tahun " + tahun + " hendak dihapus?",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Iya',
                cancelButtonText: 'Tidak',
                reverseButtons: true,
            }).then((result) => {
                if (result.isConfirmed) {
                    form.submit();
                } else if (
                    /* Read more about handling dismissals below */
                    result.dismiss === Swal.DismissReason.cancel
                ) {
                    swalWithBootstrapButtons.fire(
                        'Aksi gagal.',
                        "Data ukur balita " + balita + " pada bulan " + bulan + " tahun " + tahun + " tidak terhapus.",
                        'error'
                    )
                }
            })
        } else if (balita) {
            swalWithBootstrapButtons.fire({
                title: 'Hapus data?',
                text: "Data balita " + balita + " hendak dihapus?",
                icon: 'question',
                showCancelButton: true,
                confirmButtonText: 'Iya',
                cancelButtonText: 'Tidak',
                reverseButtons: true,
            }).then((result) => {
                if (result.isConfirmed) {
                    form.submit();
                } else if (
                    /* Read more about handling dismissals below */
                    result.dismiss === Swal.DismissReason.cancel
                ) {
                    swalWithBootstrapButtons.fire(
                        'Aksi gagal.',
                        "Data balita " + balita + " tidak terhapus.",
                        'error'
                    )
                }
            })
        }
    });

    // flash tambah data
    const flashData = $('.flash-data').data('flashdata1');
    if (flashData) {
        if (flashData.includes('berhasil')) {
            Swal.fire(
                'Berhasil!',
                '' + flashData,
                'success'
            )
        } else if (flashData.includes('Tidak ada')) {
            Swal.fire({
                icon: 'info',
                title: 'Info',
                text: '' + flashData,
            })
        }
    }

    $('.select2').select2({
        theme: 'bootstrap'
    });
    $('#dataTable').DataTable();

    // Modal detail balita
    $('body').on('click', '.detailModalBalita', function() {
        // Mengambil ID balita dari atribut data-id
        var idBalita = $(this).closest('a').data('id');
        $.ajax({
            url: 'http://127.0.0.1:8000/balita/' + idBalita,
            method: 'get',
            dataType: 'json',
            success: function(response) {
                $('#nikbalita').text(response.nik); // Mengisi nilai NIK balita ke elemen dengan ID 'nikbalita'
                $('#namabalita').text(response.nama);

                // Menginisasi jenis kelamin
                let jk = response.jenis_kelamin;
                if (jk == 'P') {
                    jk = 'Perempuan';
                } else if (jk == 'L') {
                    jk = 'Laki-laki';
                } else {
                    jk = 'Tidak diketahui';
                }

                $('#jkbalita').text(jk);
                $('#tgllahirbalita').text(response.tgl_lahir);
                $('#ibubalita').text(response.nama_ibu);
                $('#alamatbalita').text(response.alamat);
            }
        })
    })
});

function updateTime() {
    const now = new Date();
    const days = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];
    const months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];

    const day = days[now.getDay()];
    const date = now.getDate();
    const month = months[now.getMonth()]; // Perhatikan bahwa bulan dimulai dari indeks 0 (Januari) hingga 11 (Desember)
    const year = now.getFullYear();
    const hours = now.getHours();
    const minutes = now.getMinutes();
    const seconds = now.getSeconds();

    const formattedDate = `${day}, ${date}-${month}-${year}.`;
    const formattedTime = ` ${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;
    const dateTimeString = `${formattedDate} ${formattedTime}`;

    document.getElementById('real-time-clock').textContent = dateTimeString;
}
// Memanggil fungsi updateTime setiap detik
setInterval(updateTime, 1000);
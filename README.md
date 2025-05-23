# Books

A new Flutter project. With Async and Future in it!

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the  
[online documentation](https://docs.flutter.dev/), which offers tutorials,  
samples, guidance on mobile development, and a full API reference.

---

## Display

### Praktikum 1

#### Soal 1
<img src="screen-docs/W5-S1.png" alt="Soal 1" width="400"/>

#### Soal 2
<img src="screen-docs/W5-S2.png" alt="Soal 2" width="400"/>

#### Soal 3
- `substring` digunakan untuk mengambil sebagian isi string, yaitu 450 karakter pertama dari hasil response (`value.body`). Tujuannya untuk menghindari tampilan string terlalu panjang atau hanya ingin menampilkan cuplikan (preview).
- `catchError()` digunakan untuk menangani error jika proses `getData()` gagal, misalnya karena koneksi internet bermasalah, server tidak merespon, dan sebagainya.

    <img src="screen-docs/gif/W5-S3.gif" alt="Soal 3" width="400"/>

---

### Praktikum 2

#### Soal 4
- Ketiga fungsi pada Langkah 1 merupakan fungsi asynchronous yang masing-masing menunda eksekusi selama 3 detik. Setelah menunda selama waktu yang telah ditentukan, fungsi mengembalikan nilai 1, 2, dan 3 dari masing-masing fungsi.
- Pada Langkah ke-2, dibuat fungsi `count()` untuk memanggil ketiga fungsi satu per satu menggunakan `async/await`. Setelah nilai didapat, ketiganya dijumlahkan hingga menghasilkan nilai 6. Lalu, `setState()` dipanggil untuk mengubah UI dan menampilkan hasilnya.

    <img src="screen-docs/gif/W5-S4.gif" alt="Soal 4" width="400"/>

---

### Praktikum 3

#### Soal 5
- `Completer` merupakan objek dalam `Future` yang cara kerjanya mirip dengan `async/await`. Bedanya ada pada penyelesaian akhir: `Completer` harus diselesaikan secara manual dengan memanggil `completer.complete()`, sedangkan `async/await` cukup menggunakan `return`.

    <img src="screen-docs/gif/W5-S5.gif" alt="Soal 5" width="400"/>

### Soal 6
- try-catch adalah mekanisme penanganan error (error handling) dalam pemrograman.
Kode yang berada di dalam blok try akan dicoba dijalankan.
Jika tidak ada error, maka semuanya berjalan normal.
Tapi kalau terjadi error saat eksekusi, program akan langsung "lompat" ke blok catch, dan kode di dalam catch akan dijalankan sebagai respon atas error tersebut.

   <img src="screen-docs/gif/W5-S6.gif" alt="Soal 6" width="400"/>

---

### Praktikum 4
#### Soal 7
- Hasil <br />
   <img src="screen-docs/gif/W5-S7.gif" alt="Soal 7" width="400"/>


#### Soal 8
- Langkah 1 (FutureGroup) perlu import dari 'asnync' package, bisa dinamis karena add per-item, perlu menambahkan add + close, fleksibel dan cocok untuk looping
- Langkah 4 (Future.wait), itu Native (langsung dri dart), Fixed/ list di awal, langsung pass list, simpel dan cepat.

---

### Praktikum 5
#### Soal 9
 <img src="screen-docs/gif/W5-S9.gif" alt="Soal 9" width="400"/>


#### Soal 10
- Langkah 1, Perlu '.catchError()' saat dipanggil, kurang fleksibel, dan ketika selesai dijalankan harus pakai 'whenComplete()'
- Langkah 4, Menangani eror di dalam fungsi langsung, lebih fleksibel, ketika kode telah selesai dijalankan gunakan 'finally' langsung di dalam fungsi
  <img src="screen-docs/gif/W5-S10.gif" alt="Soal 10" width="400"/>

---

### Praktikum 6
#### Soal 11
- Done

#### Soal 12 
- Kita tidak mendapatkan koordinat GPS ketika menjalankan di browser karena geolocator hanya mendukung platform moile (Android/IOS), Browser tidak memiliki akses langsung ke permission native seperti GPS yg bisa digunakan di mobile
   <img src="screen-docs/gif/W5-S12.gif" alt="Soal 12" width="400"/>

--- 

### Praktikum 7
#### Soal 13
- Ya, terdapat perbedaan pada UI-nya.
  Pada praktikum sebelumnya (Praktikum 6), UI menampilkan lokasi dengan cara memanggil setState() setelah mendapatkan data dari Future. Kita harus mengatur manual bagaimana tampilan saat loading, sukses, atau error, serta mengatur myPosition secara eksplisit.
  <img src="screen-docs/gif/W5-S13.gif" alt="Soal 13" width="400"/>

#### Soal 14
- Tidak ada perubahan UI jika data berjalan tanpa adanya masalah. Meskipun jika nnti data tidak dapat ditampilkan, maka hanya akan ada perubahan text yakni text error
   <img src="screen-docs/gif/W5-S14.gif" alt="Soal 14" width="400"/>

---

### Praktikum 8
#### Soal 15 
- Done

#### Soal 16
- Apa yang terjadi ketika tombol diklik? Warna background di layar pertama berubah sesuai tombol yang diklik di layar kedua.
-  Kenapa bisa begitu? Karena Navigator.pop(context, color) mengembalikan nilai color ke layar sebelumnya (yang sedang await warna tersebut), lalu dipakai untuk update background dengan setState().
    <img src="screen-docs/gif/W5-S16.gif" alt="Soal 16" width="400"/>

---

### Praktikum 9
#### Soal 17
- Apa yang terjadi ketika button diklik? 
  Muncul dialog (AlertDialog) dengan tiga pilihan warna. Saat salah satu tombol diklik, dialog tertutup, dan background berubah sesuai warna yang dipilih.
- Mengapa bisa seperti itu?
  Karena await showDialog() menunggu sampai user memilih opsi. Warna diset saat user klik, dan setelah dialog tertutup, setState() dipanggil untuk memperbarui UI.

  <img src="screen-docs/gif/W5-S17.gif" alt="Soal 17" width="400"/>





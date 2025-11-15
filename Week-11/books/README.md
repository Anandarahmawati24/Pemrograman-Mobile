# JOBSHEET 11

###  **NIM:** 2341720048 
### **Nama:** Ananda Rahmawati

##  Praktikum 1: Mengunduh Data dari Web Service (API)

### Soal 2
![Layout](images/prak1_1.png)
![Layout](images/prak1_2.png)

### Soal 3 Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
**Jawab:** Kode pada langkah 5 menggunakan substring(0, 450) untuk mengambil 450 karakter pertama dari data respons API. Tujuannya agar teks yang ditampilkan tidak terlalu panjang dan tetap rapi di layar. Sementara itu, catchError digunakan untuk menangani kesalahan yang terjadi ketika proses pengambilan data gagal, seperti masalah jaringan atau server. Jika error muncul, nilai result akan diganti dengan pesan "An error occurred" dan UI diperbarui agar pengguna mengetahui bahwa terjadi kesalahan.

![Layout](images/prak1_3.gif)

### Soal 4 Jelaskan maksud kode langkah 1 dan 2 tersebut!
**Jawab:** Pada langkah 1, tiga method returnOneAsync(), returnTwoAsync(), dan returnThreeAsync() dibuat sebagai fungsi asynchronous yang masing-masing menunggu selama 3 detik menggunakan await Future.delayed(), lalu mengembalikan angka 1, 2, dan 3. Ini mensimulasikan proses yang membutuhkan waktu, seperti memanggil API. Pada langkah 2, method count() dibuat untuk menjalankan ketiga fungsi async tersebut secara berurutan dengan await, sehingga total waktu tunggunya menjadi 9 detik. Setelah ketiganya selesai, nilai yang dikembalikan dijumlahkan sehingga menghasilkan angka 6. Method ini menunjukkan bagaimana async/await membuat alur asynchronous lebih mudah dibaca tanpa harus menggunakan callback then().

![Layout](images/prak2.gif)

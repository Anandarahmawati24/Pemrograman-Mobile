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
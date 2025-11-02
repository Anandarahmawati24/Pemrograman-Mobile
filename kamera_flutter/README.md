# kamera_flutter
# Praktikum Mobile Jobsheet 9

**NIM:** 2341720048
**Nama:** Ananda Rahmawati

## Praktikum 1: Mengambil Foto dengan Kamera di Flutter
![Layout](images/prak_kamera.gif)

## Praktikum 2: Membuat photo filter carousel
![Layout](images/prak_filter_img.gif)

# Tugas
## 2. Menggabungkan praktikum 1 dan 2
![Layout](images/prak_filter.gif)

## 3. Jelaskan maksud void async pada praktikum 1?
### Jawab: 
void async digunakan untuk membuat fungsi berjalan secara asinkron, sehingga proses yang memakan waktu seperti mengambil foto dari kamera tidak menghambat jalannya program utama. Dengan async, aplikasi dapat menggunakan await agar program menunggu hasil suatu proses sebelum melanjutkan baris kode berikutnya.

## 3. Jelaskan fungsi dari anotasi @immutable dan @override ?
### Jawab: 
- Anotasi @immutable menandakan bahwa suatu kelas tidak bisa diubah setelah dibuat. Biasanya digunakan pada widget agar semua propertinya bersifat final, sehingga data dalam widget tetap konsisten dan tidak berubah secara tidak sengaja.
- Anotasi @override digunakan untuk menandai bahwa suatu metode menimpa atau mengganti metode dari kelas induknya. Ini membantu compiler mengenali bahwa metode tersebut adalah versi modifikasi dari metode bawaan dan mencegah kesalahan penulisan.
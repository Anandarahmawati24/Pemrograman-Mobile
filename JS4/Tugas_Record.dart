(String, int) getMahasiswa() {
  return ('Ananda Rahma', 2341720048);
}

void main() {
  var (nama, nim) = getMahasiswa();
  print('Nama: $nama'); // Output: Nama: Ananda Rahma
  print('NIM: $nim'); // Output: NIM: 2341720048
}
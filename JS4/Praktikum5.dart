// Langkah 3: fungsi tukar di luar main()
(int, int) tukar((int, int) record) {
  var (a, b) = record; 
  return (b, a); 
}

void main() {
  // Langkah 1
  var record = ('first', a: 2, b: true, 'last');
  print('Record dari Langkah 1: $record');

  // Contoh record dengan angka untuk ditukar
  var angka = (10, 20);
  print('Record awal: $angka');

  // Gunakan fungsi tukar
  var swapped = tukar(angka);
  print('Record setelah ditukar: $swapped');

  //langkah 4
  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Ananda Rahma', 2341720048);

  print(mahasiswa);
  print('Nama: ${mahasiswa.$1}');
  print('NIM : ${mahasiswa.$2}');

  //langkah 5
  var mahasiswa2 = ('Ananda Rahmawati', a: 2341720048, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'Ananda Rahmawati'
  print(mahasiswa2.a); // Prints 2341720048
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'

}
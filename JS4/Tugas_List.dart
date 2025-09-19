List getData() {
  return ['Ananda Rahma', 2341720048];
}

void main() {
  var data = getData();
  print('Nama: ${data[0]}'); // Output: Nama: Ananda Rahma
  print('NIM: ${data[1]}'); // Output: NIM: 2341720048
}
Map getData() {
  return {'nama': 'Ananda Rahma', 'nim': 2341720048};
}

void main() {
  var data = getData();
  print('Nama: ${data['nama']}'); // Output: Nama: Ananda Rahma
  print('NIM: ${data['nim']}'); // Output: NIM: 2341720048
}
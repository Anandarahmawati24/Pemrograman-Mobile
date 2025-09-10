void main() {
  String nama = "Ananda Rahmawati";
  String nim = "2341720048";

  for (int angka = 0; angka <= 201; angka++) {
    if (isPrima(angka)) {
      print("$angka -> $nama - $nim");
    } else {
      print(angka);
    }
  }
}

// fungsi  cek bilangan prima
bool isPrima(int n) {
  if (n < 2) return false;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}
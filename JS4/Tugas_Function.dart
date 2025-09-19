void main() {
  test_param(123, "ini adalah sebuah string");

  // fungsi dengan return value
  print(factorial(6));

  // Contoh lambda function: menjumlahkan dua angka
  var tambah = (int a, int b) => a + b;
  print(tambah(10, 5)); // Output: 15

  //no 3
  var greet = salam; // function disimpan ke variabel
  greet('Ananda'); // output: Halo Ananda

  //anonymous function
   var numbers = [1, 2, 3];
  numbers.forEach((n) {
    print(n * 2); // function tanpa nama
  });

  //lexical scope
   var x = 10; // variabel di luar function
  void printX() {
    print(x); // x bisa diakses karena berada di lexical scope
  }

  printX(); // Output: 10

  //lexical closure
  var triple = makeMultiplier(3);
  print(triple(5)); // Output: 15
}

test_param(int n1, String s1) {
  print(n1);
  print(s1);

  // optional positional parameter
  test_param1(123);
}

test_param1(n1, [s1]) {
  print(n1);
  print(s1);

  // optional named parameter
  test_param3(123);
  test_param3(123, s1: 'hello');
  test_param3(123, s2: 'hello', s1: 'world');
}

test_param3(n1, {s1, s2}) {
  print(n1);
  print(s1);

  // optional named parameter with default value
  test_param4(123);
}

void test_param4(n1, {s1 = 12}) {
  print(n1);
  print(s1);
}

// fungsi dengan return value
int factorial(int number) {
  if (number <= 0) {
    return 1;
  } else {
    return number * factorial(number - 1); // rekursi
  }
}

void salam(String name) {
   //no 3 var greet = salam; // function disimpan ke variabel
   //greet('Ananda'); // output: Halo Ananda
  print('Halo $name');
}

Function makeMultiplier(int factor) {
  return (int n) => n * factor; // closure mengingat nilai factor
}
  //var triple = makeMultiplier(3);
  //print(triple(5)); // Output: 15
void main (){
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'nama': 'Ananda Rahma',
    'nim': '2341720048'
  };

  var nobleGases = {2: 'helium', 10: 'neon', 18: 2, 24: 'Ananda Rahma', 40: '2341720048'};

  print(gifts);
  print(nobleGases);

var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';
  mhs1['nama'] = 'Ananda Rahma';
  mhs1['nim'] = '2341720048';

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';
  mhs2[24] = 'Ananda Rahma';
  mhs2[40] = '2341720048';

  print(mhs1);
  print(mhs2);
}
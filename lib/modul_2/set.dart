import 'dart:io';

void main() {
  Set<String> burung = {'Merpati', 'Elang', 'Kakatua'};
  print('Burung: $burung');


  // Tambah data
  burung.add('Beo');
  print('Set setelah ditambah: $burung');

  // Tambah data duplicate
  burung.add('Beo');
  print('Set setelah tambah duplicate: $burung');

  // Hapus data
  burung.remove('Elang');
  print('Burung setelah dihapus: $burung');

  // Cek data tertentu
  print('Apakah Merpati ada? ${burung.contains('Merpati')}');

  // Hitung jumlah data
  print('Jumlah data: ${burung.length}');

  // Input data Set
  print('\n--- INPUT DATA SET ---');
  Set<String> dataSet = {};

  int count = 0;
  while (count <= 0) {
    stdout.write('Masukkan jumlah data: ');
    String? input = stdin.readLineSync();
    try {
      count = int.parse(input!);
      if (count <= 0) print('Masukkan angka lebih dari 0!');
    } catch (e) {
      print('Input tidak valid!');
    }
  }

    for (int i = 0; i < count; i++) {
    stdout.write('data ke-${i + 1}: ');
    String x = stdin.readLineSync()!;
    dataSet.add(x);
  }

  print('\n=== SEMUA DATA ===');
  int nomor = 1;
  for (String item in dataSet) {
    print('$nomor. $item');
    nomor++;
  }
  print('Total data: ${dataSet.length}');

    // Tambah data baru
  stdout.write('Masukkan data baru: ');
  String dataBaru = stdin.readLineSync()!;
  if (dataSet.add(dataBaru)) {
    print('Data "$dataBaru" berhasil ditambahkan!');
  } else {
    print('Data "$dataBaru" sudah ada (duplikat)!');
  }

  // Hapus data
  stdout.write('Masukkan data yang ingin dihapus: ');
  String dataHapus = stdin.readLineSync()!;
  if (dataSet.remove(dataHapus)) {
    print('Data "$dataHapus" berhasil dihapus!');
  } else {
    print('Data "$dataHapus" tidak ditemukan!');
  }

  // Cek data
  stdout.write('Masukkan data yang ingin dicek: ');
  String dataCek = stdin.readLineSync()!;
  if (dataSet.contains(dataCek)) {
    print('Data "$dataCek" ada di Set!');
  } else {
    print('Data "$dataCek" tidak ada di Set!');
  }

  print('\n=== HASIL AKHIR ===');
  int n = 1;
  for (String item in dataSet) {
    print('$n. $item');
    n++;
  }
  print('Total data: ${dataSet.length}');
}



import 'dart:io';


// stdin.readLineSync() → baca input user

// stdout.write() → print tanpa newline

void main() {
  List<String> names = ['Alfa', 'beta', 'Charlie'];
  print('Names: $names');


  // Menambahkan data kedalam list
  names.add('Zelvia');
  print('Names setelah ditambahkan: $names');

  // Menampilkan data index tertentu
  print('Elemen pertama: ${names[0]}');
  print('Elemen kedua: ${names[1]}');

  // Mengubah data pada index pertama
  names[1] = 'Drefita';
  print('Names setelah diubah: $names');

  // Hapus data dari list
  names.remove('Charlie');
  print('Names setelah dihapus: $names');

  // Menghitung jumlah data dalam list
  print('Jumlah data: ${names.length}');

  // Looping data list
  print('Menampilkan setiap elemen:');
  for (String name in names) {
    print(name);
  }

  // MEMBUAT LIST DENGAN MODEL INPUT DATA
  // Buat list kosong
  List<String> dataList = [];
  print('Data list kosong $dataList');

  // Mengambil jumlah data dari pengguna
  int count = 0;
  while (count <= 0) {
    stdout.write('Masukkan jumlah list: ');
    String? input = stdin.readLineSync();
    try {
      // ! = Memastikan kalau input tidak null ketika di parse string ke int
      count = int.parse(input!);
      if (count <=0) {
        print('Masukkan angka lebih dari 0!');
      } 
      // e = exception, informasi ttg error
    } catch (e) {
        print('Input tidak valid! Masukkan angka yang benar.');
      }
    }

    for (int i = 0; i < count; i++) {
      stdout.write('data ke-${i + 1}: ');
      String x = stdin.readLineSync()!;
      dataList.add(x);
    }

    // Menampilkan data list 
    print('Data List:');
    print(dataList);

    // MEMBUAT DENGAN INPUTAN UNTUK
    // m. Input untuk tampil, ubah, hapus berdasarkan index
    print('\n=== SEMUA DATA ===');
    // Karena ada .length yg artinya int, maka dataList yg awalnya string tdk perlu di parse int
    for (int i = 0; i < dataList.length; i++) {
      print('Index $i: ${dataList[i]}');
    }

    // Tampil berdasarkan index
    stdout.write('\nMasukkan index yang ingin ditampilkan: ');
    // di int parse karena dataList[indexTampil] kalau [indexTampil] adalah string "" maka error. dan wajib di parse
    int indexTampil = int.parse(stdin.readLineSync()!);
    if (indexTampil >= 0 && indexTampil < dataList.length) {
      print('Data pada index $indexTampil: ${dataList[indexTampil]}');
    } else {
      print('Index tidak valid!');
    }

   // Ubah berdasarkan index
    stdout.write('Masukkan index yang ingin diubah: ');
    int indexUbah = int.parse(stdin.readLineSync()!);
    if (indexUbah >= 0 && indexUbah < dataList.length) {
      stdout.write('Masukkan data baru: ');
      String dataBaru = stdin.readLineSync()!;
      dataList[indexUbah] = dataBaru;
      print('Data berhasil diubah!');
    } else {
      print('Index tidak valid!');
    }

    // Hapus berdasarkan index
    stdout.write('Masukkan index yang ingin dihapus: ');
    int indexHapus = int.parse(stdin.readLineSync()!);
    if (indexHapus >= 0 && indexHapus < dataList.length) {
      dataList.removeAt(indexHapus);
      print('Data berhasil dihapus!');
    } else {
      print('Index tidak valid!');
    }

    // Tampilkan hasil akhir
    print('\n=== SEMUA DATA ===');
    for (int i = 0; i < dataList.length; i++) {
      print('Index $i: ${dataList[i]}');
    }
}




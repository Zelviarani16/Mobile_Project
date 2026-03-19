import 'dart:io';

void main() {
  // b. Buat Map awal
  Map<String, String> data = {
    'Anang': '081234567890',
    'Arman': '082345678901',
    'Doni': '083456789012',
  };
  print('data awal: $data');

  // c. Tambah data
  data['Rio'] = '084567890123';
  print('data setelah ditambahkan: $data');

  // d. Tampilkan data berdasarkan key
  print('Nomor Anang: ${data['Anang']}');

  // e. Ubah data
  data['Anang'] = '089999999999';
  print('Setelah diubah: $data');

  // Hapus data
  data.remove('Doni');
  print('Setelah hapus Doni: $data');

  // Cek data berdasarkan key
  print('Apakah Arman ada? ${data.containsKey('Arman')}');
  print('Apakah Doni ada? ${data.containsKey('Doni')}');

   // Hitung jumlah data
  print('Jumlah data: ${data.length}');

  // Tampilkan semua key
  print('Semua key: ${data.keys}');

  // Tampilkan semua value
  print('Semua value: ${data.values}');

    // f. Input single mahasiswa
  print('\n=== INPUT DATA MAHASISWA ===');
  stdout.write('Masukkan NIM: ');
  String nim = stdin.readLineSync()!;
  stdout.write('Masukkan Nama: ');
  String nama = stdin.readLineSync()!;
  stdout.write('Masukkan Jurusan: ');
  String jurusan = stdin.readLineSync()!;
  stdout.write('Masukkan IPK: ');
  String ipk = stdin.readLineSync()!;

    Map<String, String> mahasiswa = {
    'nim': nim,
    'nama': nama,
    'jurusan': jurusan,
    'ipk': ipk,
  };
  print('Data Mahasiswa: $mahasiswa');

  // Input multiple mahasiswa
  print('\n=== INPUT MULTIPLE MAHASISWA ===');
  stdout.write('Masukkan jumlah mahasiswa: ');
  int jumlah = int.parse(stdin.readLineSync()!);

  List<Map<String, String>> listMahasiswa = [];

    for (int i = 0; i < jumlah; i++) {
    print('\n---- Mahasiswa ke-${i + 1} ----');
    stdout.write('Masukkan NIM: ');
    String n = stdin.readLineSync()!;
    stdout.write('Masukkan Nama: ');
    String nm = stdin.readLineSync()!;
    stdout.write('Masukkan Jurusan: ');
    String jr = stdin.readLineSync()!;
    stdout.write('Masukkan IPK: ');
    String ip = stdin.readLineSync()!;

    listMahasiswa.add({
      'nim': n,
      'nama': nm,
      'jurusan': jr,
      'ipk': ip,
    });
  }

  print('\n=== DATA SEMUA MAHASISWA ===');
  for (int i = 0; i < listMahasiswa.length; i++) {
    print('Mahasiswa ${i + 1}: ${listMahasiswa[i]}');
  }



}

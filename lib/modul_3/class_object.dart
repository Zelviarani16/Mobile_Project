//  ============== CLASS ===============

// import 'dart:io';

// class Mahasiswa {
//   String nama = "Zelvia";

//   void tampilkanData() {
//     print(nama);
//   }
// }

// void main() {
//   var mahasiswa1 = Mahasiswa();
//   mahasiswa1.tampilkanData();

//   stdout.write("Masukkan nama baru: ");
//   String? namaBaru = stdin.readLineSync();
//   if (namaBaru != null && namaBaru.isNotEmpty) {
//     mahasiswa1.nama = namaBaru;
//     print("Nama berhasil diubah.");
//     mahasiswa1.tampilkanData();
//   } else {
//     print("Nama tidak boleh kosong.");
//   }
// }

// ============ OBJECT ======================

// import 'dart:io';

// class Mahasiswa {
//   String? nama;
//   int? nim;
//   String? jurusan;

//   void tampilkanData() {
//     print("Nama: ${nama ?? 'Belum diisi'}");
//     print("NIM: ${nim ?? 'Belum diisi'}");
//     print("Jurusan: ${jurusan ?? 'Belum diisi'}");
//   }
// }

// void main() {
//   Mahasiswa mahasiswa = Mahasiswa();
//   print("Masukkan Nama Mahasiswa:");
//   mahasiswa.nama = stdin.readLineSync();
//   print("Masukkan NIM Mahasiswa: ");
//   mahasiswa.nim = int.tryParse(stdin.readLineSync() ?? '');
//   print("Masukkan Jurusan Mahasiswa:");
//   mahasiswa.jurusan = stdin.readLineSync();
//   mahasiswa.tampilkanData();
// }

// ================ EXTENDS (INHERITANCE) =========

// import 'dart:io';

// class Mahasiswa {
//   String? nama;
//   int? nim;
//   String? jurusan;

//   Mahasiswa(this.nama, this.nim);

//   void tampilkanData() {
//     print("Nama: ${nama ?? 'Belum diisi'}");
//     print("NIM: ${nim ?? 'Belum diisi'}");
//     print("Jurusan: ${jurusan ?? 'Belum diisi'}");
//   }
// }

// class MahasiswaAktif extends Mahasiswa {
//   String semester;

//   MahasiswaAktif(String nama, int nim, this.semester) : super(nama, nim);

//   void status() {
//     print("Mahasiswa aktif semester $semester");
//   }
// }

// class MahasiswaAlumni extends Mahasiswa {
//   int tahunLulus;

//   MahasiswaAlumni(String nama, int nim, this.tahunLulus) : super(nama, nim);

//   void status() {
//     print("Alumni tahun $tahunLulus");
//   }
// }

// void main() {
//   print("=== DATA MAHASISWA AKTIF ===");
//   var mhsAktif = MahasiswaAktif("Zels", 12345, "4");
//   mhsAktif.tampilkanData();
//   mhsAktif.status();

//   print("\n=== DATA MAHASISWA ALUMNI ===");
//   var alumni = MahasiswaAlumni("Via", 67890, 2023);
//   alumni.tampilkanData();
//   alumni.status();
// }


// =================== D. MIXIN ======================

// ================== CLASS DASAR ==================

// class Mahasiswa {
//   String? nama;
//   int? nim;
//   String? jurusan;

//   Mahasiswa(this.nama, this.nim);

//   void tampilkanData() {
//     print("Nama: ${nama ?? 'Belum diisi'}");
//     print("NIM: ${nim ?? 'Belum diisi'}");
//     print("Jurusan: ${jurusan ?? 'Belum diisi'}");
//   }
// }

// // ================== MIXIN ==================

// mixin Absensi {
//   void cekAbsensi() {
//     print("Melakukan pengecekan absensi");
//   }
// }

// mixin Penilaian {
//   void beriNilai() {
//     print("Memberikan penilaian");
//   }
// }

// mixin Administrasi {
//   void kelolaData() {
//     print("Mengelola data administrasi");
//   }
// }

// // ================== DOSEN ==================

// class Dosen extends Mahasiswa
//     with Absensi, Penilaian, Administrasi {
//   String mataKuliah;

//   Dosen(String nama, int nim, this.mataKuliah)
//       : super(nama, nim);

//   void infoDosen() {
//     print("Mengajar mata kuliah $mataKuliah");
//   }
// }

// // ================== FAKULTAS ==================

// class Fakultas extends Mahasiswa with Administrasi {
//   String fakultas;

//   Fakultas(String nama, int nim, this.fakultas)
//       : super(nama, nim);

//   void infoFakultas() {
//     print("Bagian fakultas: $fakultas");
//   }
// }

// // ================== MAIN ==================

// void main() {
//   print("=== DATA DOSEN ===");
//   var dosen = Dosen("Pak Anang", 18172010192827, "Aplikasi Mobile Praktikum");
//   dosen.tampilkanData();
//   dosen.infoDosen();
//   dosen.cekAbsensi();
//   dosen.beriNilai();
//   dosen.kelolaData();

//   print("\n=== DATA FAKULTAS ===");
//   var fak = Fakultas("Admin Fakultas", 22222, "Vokasi");
//   fak.tampilkanData();
//   fak.infoFakultas();
//   fak.kelolaData();
// }


// /////////////////////////

import 'dart:io';

// ===== 3 MIXIN =====

mixin BisaMengajar {
  void mengajar(String mataKuliah) {
    print("Sedang mengajar mata kuliah: $mataKuliah");
  }
}

mixin BisaMeneliti {
  void meneliti(String topik) {
    print("Sedang meneliti topik: $topik");
  }
}

mixin BisaMembukaProdi {
  List<String> daftarProdi = [];

  void tambahProdi(String namaProdi) {
    daftarProdi.add(namaProdi);
    print("Prodi '$namaProdi' berhasil dibuka.");
  }

  void tampilkanProdi() {
    print("Daftar Prodi:");
    for (var prodi in daftarProdi) {
      print("  - $prodi");
    }
  }
}

mixin BisaMengadakanEvent {
  void adakanEvent(String namaEvent) {
    print("Mengadakan event: $namaEvent");
  }
}

mixin BisaMembimbing {
  void membimbing(String namaMahasiswa) {
    print("Sedang membimbing skripsi: $namaMahasiswa");
  }
}

// ===== BASE CLASS =====

class Mahasiswa {
  String? nama;
  int? nim;
  String? jurusan;

  void tampilkanData() {
    print("Nama    : ${nama ?? 'Belum diisi'}");
    print("NIM     : ${nim ?? 'Belum diisi'}");
    print("Jurusan : ${jurusan ?? 'Belum diisi'}");
  }
}

// ===== EXTENDS + MIXIN =====

// Dosen extends Mahasiswa
// mixin: BisaMengajar, BisaMeneliti, BisaMembimbing
class Dosen extends Mahasiswa with BisaMengajar, BisaMeneliti, BisaMembimbing {
  String? gelar;
  String? nip;

  void tampilkanDosen() {
    print("\n=== DATA DOSEN ===");
    print("Gelar   : ${gelar ?? '-'}");
    print("Nama    : ${nama ?? '-'}");
    print("NIP     : ${nip ?? '-'}");
    print("Jurusan : ${jurusan ?? '-'}");
    mengajar("Pemrograman Mobile");
    meneliti("Kecerdasan Buatan");
    membimbing("Aisyah Ar Rahmah");
  }
}

// Fakultas extends Mahasiswa
// mixin: BisaMembukaProdi, BisaMengadakanEvent
class Fakultas extends Mahasiswa with BisaMembukaProdi, BisaMengadakanEvent {
  String? namaFakultas;
  String? dekan;

  void tampilkanFakultas() {
    print("\n=== DATA FAKULTAS ===");
    print("Fakultas : ${namaFakultas ?? '-'}");
    print("Dekan    : ${dekan ?? '-'}");
    tambahProdi("D4 Teknik Informatika");
    tambahProdi("D4 Teknik Elektro");
    tampilkanProdi();
    adakanEvent("Seminar Nasional Teknologi 2026");
  }
}

// ===== MAIN =====

void main() {
  // Mahasiswa
  Mahasiswa mhs = Mahasiswa();
  mhs.nama = "Aisyah Ar Rahmah";
  mhs.nim = 2210001;
  mhs.jurusan = "D4 Teknik Informatika";
  print("\n=== DATA MAHASISWA ===");
  mhs.tampilkanData();

  // Dosen
  Dosen dosen = Dosen();
  dosen.nama = "Ricky Patrio";
  dosen.nip = "198001012010011001";
  dosen.gelar = "Dr.";
  dosen.jurusan = "D4 Teknik Informatika";
  dosen.tampilkanDosen();

  // Fakultas
  Fakultas fak = Fakultas();
  fak.namaFakultas = "Fakultas Vokasi";
  fak.dekan = "Prof. Dr. Andi Budiman";
  fak.tampilkanFakultas();
}
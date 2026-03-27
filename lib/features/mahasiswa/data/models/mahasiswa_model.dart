class MahasiswaModel {
  final int id;
  final String nama;
  final String nim;
  final String email;
  final String jurusan;
  final String username;
  final String city;

  MahasiswaModel({
    required this.id,
    required this.nama,
    required this.nim,
    required this.email,
    required this.jurusan,
    required this.username,
    required this.city,
  });

  factory MahasiswaModel.fromJson(Map<String, dynamic> json) {
    return MahasiswaModel(
      id: json['id'] ?? 0,
      nama: json['name'] ?? '',
      nim: json['id'].toString(),
      email: json['email'] ?? '',
      jurusan: 'Teknik Informatika',
      username: json['username'] ?? '',
      city: json['address']?['city'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama': nama,
      'nim': nim,
      'email': email,
      'jurusan': jurusan,
      'username': username,
      'city': city,
    };
  }
}
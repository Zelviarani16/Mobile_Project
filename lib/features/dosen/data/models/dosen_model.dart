class AddressModel {
  final String street;
  final String suite;
  final String city;
  final String zipcode;

  AddressModel({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      street: json['street'] ?? '',
      suite: json['suite'] ?? '',
      city: json['city'] ?? '',
      zipcode: json['zipcode'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {'street': street, 'suite': suite, 'city': city, 'zipcode': zipcode};
  }
}

class DosenModel {
  final int id;
  final String nama;
  final String nip;
  final String email;
  final String jurusan;
  final String username;
  final String city;

  DosenModel({
    required this.id,
    required this.nama,
    required this.nip,
    required this.email,
    required this.jurusan,
    required this.username,
    required this.city,
  });

  factory DosenModel.fromJson(Map<String, dynamic> json) {
    return DosenModel(
      id: json['id'] ?? 0,
      nama: json['name'] ?? '',
      nip: json['id'].toString(),
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
      'nip': nip,
      'email': email,
      'jurusan': jurusan,
      'username': username,
      'city': city,
    };
  }
}
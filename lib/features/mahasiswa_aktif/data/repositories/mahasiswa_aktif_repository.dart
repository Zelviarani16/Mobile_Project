import 'dart:convert';
import 'package:flutter_application_1/features/mahasiswa_aktif/data/models/mahasiswa_aktif_model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class MahasiswaAktifRepository {
  final Dio _dio = Dio();

  // Menggunakan HTTP
  Future<List<MahasiswaAktifModel>> getMahasiswaAktifListHttp() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      headers: {'Accept': 'application/json'},
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => MahasiswaAktifModel.fromJson(json)).toList();
    } else {
      throw Exception('Gagal memuat data: ${response.statusCode}');
    }
  }

  // Menggunakan DIO
  Future<List<MahasiswaAktifModel>> getMahasiswaAktifList() async {
    final response = await _dio.get(
      'https://jsonplaceholder.typicode.com/posts',
      options: Options(headers: {'Accept': 'application/json'}),
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      return data.map((json) => MahasiswaAktifModel.fromJson(json)).toList();
    } else {
      throw Exception('Gagal memuat data: ${response.statusCode}');
    }
  }
}
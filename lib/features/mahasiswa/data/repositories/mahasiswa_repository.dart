import 'dart:convert';
import 'package:flutter_application_1/features/mahasiswa/data/models/mahasiswa_model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class MahasiswaRepository {
  final Dio _dio = Dio();

  // Menggunakan HTTP
  Future<List<MahasiswaModel>> getMahasiswaListHttp() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/comments'),
      headers: {'Accept': 'application/json'},
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => MahasiswaModel.fromJson(json)).toList();
    } else {
      throw Exception('Gagal memuat data mahasiswa: ${response.statusCode}');
    }
  }

  // Menggunakan DIO
  Future<List<MahasiswaModel>> getMahasiswaList() async {
    final response = await _dio.get(
      'https://jsonplaceholder.typicode.com/comments',
      options: Options(headers: {'Accept': 'application/json'}),
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      return data.map((json) => MahasiswaModel.fromJson(json)).toList();
    } else {
      throw Exception('Gagal memuat data mahasiswa: ${response.statusCode}');
    }
  }
}
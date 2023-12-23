import 'package:dio/dio.dart';

class ApiService {
  final String _baseurl = "https://www.googleapis.com/books/v1/";
  final Dio dio;

  ApiService({required this.dio});

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get('$_baseurl$endpoint');
    return response.data;
  }
}

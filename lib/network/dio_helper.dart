import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
        baseUrl: 'https://d67c-196-205-94-85.eu.ngrok.io/api/v1',
        connectTimeout: 30 * 1000,
        receiveTimeout: 30 * 1000,
        receiveDataWhenStatusError: true,
        headers: {'Content-Type': 'Application/json', 'Accept': 'Application/json'}));
  }

  static Future<Response> getData(
      {required String url, Map<String, dynamic>? query, bool isAuthentication = false}) async {
    if (isAuthentication) {
      Authentication();
    }
    final res = await dio.get(url, queryParameters: query);
    res.statusCode;
    return res;
  }

  static Future<Response> putData(
      {required String url,
      Map<String, dynamic>? query,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? data,
      bool isAuthentication = false}) async {
    if (isAuthentication) {
      Authentication();
    }
    return dio.put(url, queryParameters: query, data: data, options: Options(headers: headers));
  }

  static Future<Response> postData(
      {required String url,
      Map<String, dynamic>? query,
      Map<String, dynamic>? headers,
      dynamic data,
      bool isAuthentication = false}) async {
    if (isAuthentication) {
      Authentication();
    }
    return dio.post(url, queryParameters: query, data: data, options: Options(headers: headers));
  }

  static Future<Response> deleteData(
      {required String url, Map<String, dynamic>? query, dynamic data, bool isAuthentication = false}) async {
    Authentication();
    return dio.delete(url, queryParameters: query, data: data);
  }

  static void Authentication() {
    dio.options.headers = {
      'Content-Type': 'Application/json',
      'Accept': 'Application/json',
      // 'Authorization': "${CacheHelper.getAuthentication()}",
    };
  }
}

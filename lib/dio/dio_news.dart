import 'package:dio/dio.dart';

class DioNews {
  final dio = Dio;


   Future<dynamic> getData({required String url, required dynamic queryParameters,}) async {
     return await Dio(
      BaseOptions(
        baseUrl: 'https://newsapi.org/',
        receiveDataWhenStatusError: true,
      ),
    ).get(url,queryParameters: queryParameters,);
  }
}











// 'v2/top-headlines?country=us&category=business&apiKey=f2a36e4bc8ad41a79e9d69abab73453c',
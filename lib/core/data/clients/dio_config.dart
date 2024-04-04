import 'package:dio/dio.dart';

class DioConfig {
  final String baseUrl;
  final Interceptor interceptor;


  DioConfig(this.baseUrl, this.interceptor);
}
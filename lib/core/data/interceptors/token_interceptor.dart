import 'package:clockify/core/constants/project_settings.dart';
import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) {
    print('Request URL: ${options.uri}');
    options.headers.addAll(
      {
        'X-Api-Key': ProjectSettings.apiKey,
      },
    );
    super.onRequest(options, handler);
  }

  @override
  void onResponse(
      Response response,
      ResponseInterceptorHandler handler,
      ) {
    if (response.statusCode != 200) {
      print('Error: ${response.statusCode} - ${response.statusMessage}');
      print('Response: ${response.data}');
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(
      DioError err,
      ErrorInterceptorHandler handler,
      ) {
    if (err.response != null) {
      print('Error: ${err.response!.statusCode} - ${err.response!.statusMessage}');
      print('Response: ${err.response!.data}');
    } else {
      print('Error: ${err.error}');
    }
    super.onError(err, handler);
  }
}

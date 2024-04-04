

// ******** DATA LAYER ********
import 'package:clockify/core/constants/project_settings.dart';
import 'package:clockify/core/data/clients/api_client.dart';
import 'package:clockify/core/data/clients/dio_config.dart';
import 'package:clockify/core/data/interceptors/token_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sentry_dio/sentry_dio.dart';

final apiClientProvider = Provider<ApiClient>(
      (ref) => ApiClient(
    ref.watch(
      dioProvider(
        DioConfig(
          ProjectSettings.apiBaseUrl,
          TokenInterceptor()
        ),
      ),
    ),
  ),
);

final dioProvider = Provider.family<Dio, DioConfig>((
    ref,
    config,
    ) {
  final dio = Dio(
    BaseOptions(baseUrl: config.baseUrl),
  )..interceptors.addAll(
    [
      config.interceptor,
    ],
  );

  dio.addSentry();
  return dio;
});

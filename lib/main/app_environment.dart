// ignore_for_file: constant_identifier_names
enum AppEnvironment {
  DEV(
    env: 'dev',
    appTitle: 'App Dev',
    apiBaseUrl: 'https://api-dev.ia.de',
  ),
  PROD(
    env: 'prod',
    appTitle: 'App Prod',
    apiBaseUrl: 'https://api.ia.de',
  ),
  STAGING(
    env: 'staging',
    appTitle: 'App Staging',
    apiBaseUrl: 'https://api-qa.ia.de',
  );

  final String env;
  final String appTitle;
  final String apiBaseUrl;

  const AppEnvironment({
    required this.env,
    required this.appTitle,
    required this.apiBaseUrl,
  });
}

abstract class EnvInfo {
  static AppEnvironment _environment = AppEnvironment.DEV;

  static void initialize(AppEnvironment environment) {
    EnvInfo._environment = environment;
  }

  static String get envName => _environment.env;

  static String get appTitle => _environment.appTitle;

  static String get apiBaseUrl => _environment.apiBaseUrl;

  static AppEnvironment get environment => _environment;

  static bool get isProduction => _environment == AppEnvironment.PROD;

  static bool get isDev => _environment == AppEnvironment.DEV;
}

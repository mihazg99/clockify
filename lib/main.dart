import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loggy/loggy.dart';
import 'package:clockify/core/domain/router/routes.dart' as router;
import 'package:clockify/generated/l10n.dart';
import 'package:clockify/main/app_environment.dart';



Future<void> mainCommon(AppEnvironment environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    ProviderScope(
      //observers: [CustomProviderObserver()],
      child: const Clockify(),
    ),
  );
}

class Clockify extends ConsumerWidget {
  const Clockify({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final whitelabelState = ref.watch(whiteLabelNotifierProvider);
    // final styling = switch (whitelabelState) {
    //   BaseData(data: final config) => config.featureConfig.pharmacyId,
    //   _ => null,
    // };
    //final colors = ref.watch(colorProvider);
    return MaterialApp(
      navigatorKey: navigatorKey,
     // debugShowCheckedModeBanner: EnvInfo.environment != AppEnvironment.PROD,
      //title: EnvInfo.appTitle,
      // darkTheme: secondaryTheme
      title: 'Clockify',
      themeMode: ThemeMode.system,
      localizationsDelegates: const [
        S.delegate,
        ...GlobalMaterialLocalizations.delegates,
      ],
      supportedLocales: const [
        Locale('de'),
      ],
      //theme: configureThemeWith(styling: null, colors: colors),
      routes: router.routes,
     // builder: (_, child) => Material(
      //  type: MaterialType.transparency,
      //  child: AppBaseWidget(child ?? const SizedBox()),
     // ),
    );
  }
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

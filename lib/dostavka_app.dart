import 'package:dostavka/presentation/router/app_router.dart';
import 'package:dostavka/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:dostavka/generated/l10n.dart';

class DostavkaApp extends StatelessWidget {
  const DostavkaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Driver App',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('uk'),
      supportedLocales: const [
        Locale('en'),
        Locale('uk'),
      ],
    );
  }
}

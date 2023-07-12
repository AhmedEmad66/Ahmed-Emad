import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test_project/screens/carousel_slider_test.dart';
import 'package:test_project/screens/custom_container.dart';
import 'package:test_project/screens/localization_test.dart';
import 'package:test_project/screens/shimmer_test.dart';
import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: const CustomContainer(),
      // initialRoute: ShimmerTest.id,
      // routes: {
      //   ShimmerTest.id: (context) => const ShimmerTest(),
      //   CarouselSliderTest.id: (context) => const CarouselSliderTest(),
      //   LocalizationTest.id: (context) => const LocalizationTest(),
      // },
    );
  }
}

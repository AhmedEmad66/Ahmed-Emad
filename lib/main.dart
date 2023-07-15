import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test_project/screens/members_table.dart';
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
      home: const UserTablePage(),
      // initialRoute: ShimmerTest.id,
      // routes: {
      //   ShimmerTest.id: (context) => const ShimmerTest(),
      //   CarouselSliderTest.id: (context) => const CarouselSliderTest(),
      //   LocalizationTest.id: (context) => const LocalizationTest(),
      // },
    );
  }
}

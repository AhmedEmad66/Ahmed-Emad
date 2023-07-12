import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class LocalizationTest extends StatelessWidget {
  const LocalizationTest({super.key});
  static String id = "LocalizationTest";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          S.of(context).title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

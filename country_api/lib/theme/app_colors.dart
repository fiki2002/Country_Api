import 'package:flutter/material.dart';

class CountryAppTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff000f24),
    hintColor: const Color(0xffEAECF0),
    backgroundColor: const Color(0xff98A2B3).withOpacity(0.2),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffFFFFFF),
    hintColor: const Color(0xff001637),
    backgroundColor: const Color(0xffF2F4F7),
  );
}

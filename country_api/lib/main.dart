import 'package:flutter/material.dart';

import 'theme/app_colors.dart';
import 'views/country_page.dart';

void main() {
  runApp(
    const CountryApi(),
  );
}

class CountryApi extends StatelessWidget {
  const CountryApi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country Api',
      debugShowCheckedModeBanner: false,
      home: const CountryPage(),
      themeMode: ThemeMode.system,
      theme: CountryAppTheme.lightTheme,
      darkTheme: CountryAppTheme.darkTheme,
    );
  }
}

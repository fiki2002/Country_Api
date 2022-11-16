import 'package:country_api/provider/countries_provider.dart';
import 'package:country_api/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CountryProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(
          child: const CountryPage(),
          builder: (context, themeProvider, child) {
            return MaterialApp(
              title: 'Country Api',
              debugShowCheckedModeBanner: false,
              home: child,
              themeMode: themeProvider.selectedTheme,
              theme: CountryAppTheme.lightTheme,
              darkTheme: CountryAppTheme.darkTheme,
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';

import 'components/country_app_header.dart';
import 'components/country_app_search_bar.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({super.key});

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 40.0,
          horizontal: 20,
        ),
        child: Column(
          children: const [
            CountryAppHeader(),
            CountrySearchBar(),
          ],
        ),
      ),
    );
  }
}

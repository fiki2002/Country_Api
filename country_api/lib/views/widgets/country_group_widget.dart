import 'package:country_api/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/country_group.dart';
import '../../provider/theme_provider.dart';
import 'country_tile.dart';

class CountryGroupWidget extends StatelessWidget {
  final CountryGroup countryGroup;

  const CountryGroupWidget({
    Key? key,
    required this.countryGroup,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedTheme = Provider.of<ThemeProvider>(context).selectedTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            countryGroup.title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: CountryAppFonts.axiformaRegular,
              color: selectedTheme == ThemeMode.dark
                  ? const Color(0xff98A2B3)
                  : const Color(0xff667085),
            ),
          ),
          const SizedBox(height: 4),
          for (var country in countryGroup.countries) ...{
            CountryTile(country: country),
          },
        ],
      ),
    );
  }
}

import 'package:country_api/theme/app_fonts.dart';
import 'package:country_api/views/country_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/country_app_model.dart';
import '../../provider/theme_provider.dart';

class CountryTile extends StatelessWidget {
  final Country country;

  const CountryTile({
    Key? key,
    required this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedTheme = Provider.of<ThemeProvider>(context).selectedTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CountryDetails(country: country),
            ),
          );
        },
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    country.flags?.png ?? '',
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    country.name?.official ?? 'NIL',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontFamily: CountryAppFonts.axiformaRegular,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    country.capital?[0] ?? 'NIL',
                    style: TextStyle(
                      color: selectedTheme == ThemeMode.dark
                          ? const Color(0xff98A2B3)
                          : const Color(0xff667085),
                      fontFamily: CountryAppFonts.axiformaRegular,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

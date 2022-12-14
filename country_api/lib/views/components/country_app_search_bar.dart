import 'package:country_api/provider/countries_provider.dart';
import 'package:country_api/views/widgets/country_search_feature.dart';
import 'package:country_api/views/components/filter_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_provider.dart';
import '../../theme/app_fonts.dart';
import '../widgets/language_modal_sheet.dart';

class CountrySearchBar extends StatefulWidget {
  const CountrySearchBar({super.key});

  @override
  State<CountrySearchBar> createState() => _CountrySearchBarState();
}

class _CountrySearchBarState extends State<CountrySearchBar> {
  List countryNames = [];

  @override
  Widget build(BuildContext context) {
    final selectedTheme = Provider.of<ThemeProvider>(context).selectedTheme;

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showSearch(
              context: context,
              delegate: SearchCountries(),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            height: 54,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).backgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.search,
                  size: 20,
                  color: selectedTheme == ThemeMode.dark
                      ? const Color(0xffEAECF0)
                      : const Color(0xff667085),
                ),
                Text(
                  'Search Country',
                  style: TextStyle(
                    color: selectedTheme == ThemeMode.dark
                        ? const Color(0xffEAECF0)
                        : const Color(0xff667085),
                    fontSize: 16,
                    fontFamily: CountryAppFonts.axiformaRegular,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  width: 30,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildContainer(
              CupertinoIcons.globe,
              context.watch<CountryProvider>().translationString.toUpperCase(),
              context,
              () => LanguageModalSheet.showModalSheet(context),
            ),
            buildContainer(
              Icons.filter_alt_outlined,
              'Filter',
              context,
              () => FilterModalSheet.showModalSheet(context),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildContainer(
    IconData icon,
    String text,
    BuildContext context,
    VoidCallback callback,
  ) {
    return InkWell(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 8,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffA9B8D4),
            width: 0.2,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 5),
            Text(
              text,
              style: TextStyle(
                fontFamily: CountryAppFonts.axiformaRegular,
                fontSize: 12,
                color: Theme.of(context).iconTheme.color,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}

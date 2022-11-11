import 'package:country_api/views/widgets/filter_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return Column(
      children: [
        Container(
          width: 380,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Theme.of(context).backgroundColor,
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
              'EN',
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

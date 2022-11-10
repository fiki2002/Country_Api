import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme/app_fonts.dart';

class CountrySearchBar extends StatelessWidget {
  const CountrySearchBar({super.key});

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
            ),
            buildContainer(
              Icons.,
              'EN',
              context,
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
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 5,
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
          Text(
            text,
            style: TextStyle(
              fontFamily: CountryAppFonts.axiformaRegular,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}

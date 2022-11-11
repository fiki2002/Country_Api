import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_provider.dart';
import '../../theme/app_fonts.dart';

class LanguageModalSheet extends StatefulWidget {
  const LanguageModalSheet({super.key});

  static Future<bool?> showModalSheet(BuildContext context) =>
      showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(32),
            ),
          ),
          context: context,
          builder: (BuildContext context) {
            return const LanguageModalSheet();
          });

  @override
  State<LanguageModalSheet> createState() => _LanguageModalSheetState();
}

class _LanguageModalSheetState extends State<LanguageModalSheet> {
  List<String> items = [
    'English',
    'Deutsch',
    'Espanol',
    'Francaise',
    'Italiano',
    'Portugues',
    'Spanish',
    'Greek',
    'Chinese',
    'Arabic',
    'Bengali',
  ];
  @override
  Widget build(BuildContext context) {
    final selectedTheme = Provider.of<ThemeProvider>(context).selectedTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 15.0,
            top: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Languages',
                style: TextStyle(
                  color: selectedTheme == ThemeMode.dark
                      ? const Color(0xffEAECF0)
                      : const Color(0xff1C1917),
                  fontSize: 20,
                  fontFamily: CountryAppFonts.axiformaRegular,
                  fontWeight: FontWeight.w700,
                ),
              ),
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  CupertinoIcons.clear_fill,
                  color: Color(0xff98A2B3),
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.only(
            left: 24,
            right: 15.0,
          ),
          itemBuilder: (context, index) {
            return RadioListTile(
              value: index,
              dense: true,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding: EdgeInsets.zero,
              groupValue: null,
              onChanged: null,
              title: Text(items[index].toString(),
                  style: TextStyle(
                    color: selectedTheme == ThemeMode.dark
                        ? const Color(0xffF2F4F7)
                        : const Color(0xff1C1917),
                    fontFamily: CountryAppFonts.axiformaRegular,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  )),
            );
          },
          itemCount: items.length,
        ),
      ],
    );
  }
}

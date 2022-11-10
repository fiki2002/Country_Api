import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CountryAppHeader extends StatefulWidget {
  const CountryAppHeader({super.key});

  @override
  State<CountryAppHeader> createState() => _CountryAppHeaderState();
}

class _CountryAppHeaderState extends State<CountryAppHeader> {
  @override
  Widget build(BuildContext context) {
    final theme = MediaQuery.of(context).platformBrightness;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            text: 'Explore',
            style: GoogleFonts.elsieSwashCaps(
              color: Theme.of(context).hintColor,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: '.',
                style: GoogleFonts.elsieSwashCaps(
                  color: const Color(0xffFF6C00),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        theme == Brightness.dark
            ? IconButton(
                onPressed: () {
                  setState(() {
                    ThemeMode.system == ThemeMode.light;
                  });
                },
                icon: const Icon(
                  CupertinoIcons.moon_circle_fill,
                  color: Color(0xffeaecf0),
                  size: 20,
                ))
            : IconButton(
                onPressed: () {
                  setState(() {
                     ThemeMode.system == ThemeMode.dark;
                  });
                },
                icon: const Icon(
                  Icons.light_mode_outlined,
                  size: 20,
                ))
      ],
    );
  }
}

import 'package:country_api/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CountryAppHeader extends StatelessWidget {
  const CountryAppHeader({super.key});
  void _theme(BuildContext context) {
    Provider.of<ThemeProvider>(context, listen: false).toggleTheme(context);
  }

  @override
  Widget build(BuildContext context) {
    final selectedTheme = Provider.of<ThemeProvider>(context).selectedTheme;
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
        IconButton(
          onPressed: () => _theme(context),
          icon: Icon(
            selectedTheme == ThemeMode.light
                ? Icons.light_mode_outlined
                : Icons.dark_mode_outlined,
            size: 20,
          ),
        ),
      ],
    );
  }
}

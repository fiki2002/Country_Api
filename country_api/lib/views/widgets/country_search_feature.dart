import 'package:country_api/provider/countries_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/country_app_model.dart';
import '../../provider/theme_provider.dart';
import '../../services/country_app_services.dart';
import '../../theme/app_fonts.dart';

class SearchCountries extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(
            Icons.close,
            color: Theme.of(context).primaryColor,
          ))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          Icons.arrow_back_ios,
          color: Theme.of(context).primaryColor,
        ));
  }

  CountryAppService countryAppService = CountryAppService();

  @override
  Widget buildResults(BuildContext context) {
    final selectedTheme = Provider.of<ThemeProvider>(context).selectedTheme;

    return Consumer<CountryProvider>(builder: (context, value, child) {
      final countries = value.countries;
      return FutureBuilder<List<Country>>(
          future: countryAppService.getAllCountries(query: query),
          builder: (context, snapshot) {
            var data = snapshot.data;
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              );
            }
            return ListView.builder(
                shrinkWrap: true,
                itemCount: value.countries.length,
                itemBuilder: (context, index) {
                  final country = countries[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
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
                  );
                });
          });
    });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text(
        'Enter a search',
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontFamily: CountryAppFonts.axiformaRegular,
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

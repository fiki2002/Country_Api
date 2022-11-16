import 'package:country_api/provider/countries_provider.dart';
import 'package:country_api/views/country_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/country_app_model.dart';

class SearchCountries extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(
            Icons.close,
          ))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back_ios,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    var listQuery = context.read<CountryProvider>().countries;
    List<Country> matchQuery = [];
    for (var item in listQuery) {
      if (item.name!.common!.toLowerCase().contains(query.toLowerCase()) ||
          item.name!.official!.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CountryDetails(
                    country: result,
                  ),
                ),
              );
            },
            child: ListTile(
              title: Text(
                result.name!.official ?? '',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var listQuery = context.read<CountryProvider>().countries;
    List<Country> matchQuery = [];
    for (var item in listQuery) {
      if (item.name!.common!.toLowerCase().contains(query.toLowerCase()) ||
          item.name!.official!.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CountryDetails(
                    country: result,
                  ),
                ),
              );
            },
            child: ListTile(
              title: Text(
                result.name!.official ?? '',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          );
        });
  }
}

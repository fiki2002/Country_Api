import 'dart:convert';
import 'dart:developer';

import 'package:country_api/models/country_app_model.dart';
import 'package:http/http.dart' as http;

class CountryAppService {
  static const baseUrl = 'https://restcountries.com/v3.1/all';

  Future<List<Country>> getAllCountries() async {
    final uri = Uri.parse(baseUrl);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      List<Country> countriesList = (json)
          .map(
            (e) => Country.fromJson(e as Map<String, dynamic>),
          )
          .toList();
      return countriesList;
    }
    throw Exception('Failed to load list of countries');
  }
}

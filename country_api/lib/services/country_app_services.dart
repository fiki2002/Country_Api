import 'dart:convert';

import 'package:country_api/models/country_app_model.dart';
import 'package:http/http.dart' as http;

class CountryAppService {
  Future<List<Country>> getAll() async {
    const baseUrl = 'https://restcountries.com/v3.1/all';
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
    } else {
      return [];
    }
  }
}

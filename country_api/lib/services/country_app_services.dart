import 'dart:convert';
import 'dart:developer';

import 'package:country_api/models/country_app_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CountryAppService {
  static const baseUrl = 'https://restcountries.com/v3.1/all';
  var data = [];
  List<Country> results = [];
  Future<List<Country>> getAllCountries() async {
    final uri = Uri.parse(baseUrl);
    try {
    final response = await http.get(uri);
      if (response.statusCode == 200) {
        data = json.decode(response.body) as List;
        results = data.map((e) => Country.fromJson(e)).toList();
      } else {
        debugPrint('Failed to load list of countries');
      }
    } on Exception catch (e, s) {
      log(
        'error: $e',
      );
      log('stackTrace: $s');
    }
    return results;
  }
}

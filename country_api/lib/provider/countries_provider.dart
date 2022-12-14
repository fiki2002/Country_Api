import 'package:country_api/models/country_app_model.dart';
import 'package:country_api/services/country_app_services.dart';
import 'package:flutter/widgets.dart';

import '../models/country_group.dart';

class CountryProvider extends ChangeNotifier {
  final CountryAppService _countryAppService = CountryAppService();
  final List<CountryGroup> _countryGroups = [];
  List<CountryGroup> get countryGroups => _countryGroups;
  bool _translationSelected = false;
  bool get translationSelected => _translationSelected;

  List<Country> _countries = [];

  bool isLoading = false;
  List<Country> get countries => _countries;

  String _translationString = "eng";
  String get translationString => _translationString;

  set translationString(value) {
    _translationString = value;
    notifyListeners();
  }

  set translationSelected(value) {
    _translationSelected = value;
    notifyListeners();
  }

  Future<void> setAllCountryList() async {
    isLoading = true;
    notifyListeners();

    await _groupCountries();
    notifyListeners();

    isLoading = false;
    notifyListeners();
  }

  Future<List<Country>> getSingleCountry() async {
    isLoading = true;
    notifyListeners();

    final response = await _countryAppService.getAllCountries();

    _countries = response;

    isLoading = false;
    notifyListeners();
    return _countries;
  }

  Future<void> _groupCountries() async {
    final response = await _countryAppService.getAllCountries();

    for (var country in response) {
      final groups = _countryGroups.where(
        (group) => group.title == (country.name?.official ?? '')[0],
      );
      if (groups.isEmpty) {
        final countryGroup = CountryGroup(
          title: (country.name?.official ?? '')[0],
          countries: [country],
        );
        _countryGroups.add(countryGroup);
      } else {
        final index = _countryGroups.indexOf(groups.first);
        final groupToModify = _countryGroups[index];
        _countryGroups[index] = groupToModify.appendCountry(country);
      }
    }
    _countryGroups.sort((a, b) => a.title.compareTo(b.title));
  }
}

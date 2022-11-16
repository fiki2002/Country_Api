import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _selectedTheme = ThemeMode.system;
  ThemeMode get selectedTheme => _selectedTheme;

  void toggleTheme(BuildContext context) {
    if (_selectedTheme == ThemeMode.system) {
      if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
        _selectedTheme = ThemeMode.light;
        notifyListeners();
      } else if (MediaQuery.of(context).platformBrightness ==
          Brightness.light) {
        _selectedTheme = ThemeMode.dark;
        notifyListeners();
      }
    } else if (_selectedTheme == ThemeMode.dark) {
      _selectedTheme = ThemeMode.light;
      notifyListeners();
    } else if (_selectedTheme == ThemeMode.light) {
      _selectedTheme = ThemeMode.dark;
      notifyListeners();
    } else {
      _selectedTheme == ThemeMode.dark ? ThemeMode.system : ThemeMode.light;
      notifyListeners();
      _selectedTheme == ThemeMode.light ? ThemeMode.system : ThemeMode.dark;
      notifyListeners();
    }
  }
}

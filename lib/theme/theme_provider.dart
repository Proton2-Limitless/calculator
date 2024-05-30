import 'package:calculator/theme/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeDataStyle = lightMode;

  ThemeData get themeDataStyle => _themeDataStyle;

  set themeDataStyle(ThemeData themeData) {
    _themeDataStyle = themeData;
    notifyListeners();
  }

  void changeTheme() {
    if (_themeDataStyle == lightMode) {
      themeDataStyle = darkMode;
    } else {
      themeDataStyle = lightMode;
    }
  }
}

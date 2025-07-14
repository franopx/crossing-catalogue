import 'package:crossing_catalogue/providers/preferences_provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppData extends ChangeNotifier {

  String _dark_mode = 'auto';
  String get dark_mode => _dark_mode;

  Future<void> loadPreferences() async {
    _dark_mode = await PreferencesManager.getDarkMode();
    notifyListeners();
  }

  void setDarkMode(String value) {
    _dark_mode = value;
    notifyListeners();
  }

}
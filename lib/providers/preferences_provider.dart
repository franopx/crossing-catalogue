import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesManager {

  // 0: auto, 1: dark, 2: light
  static Future<void> setDarkMode(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('dark_mode', value);
  }

  static Future<String> getDarkMode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('dark_mode')?? 'auto';
  }

}
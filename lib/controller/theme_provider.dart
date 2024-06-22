import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{

  bool _isDark = false;

  bool get isDark => _isDark;

  ThemeProvider(){
    log('-------- theme provider called --------');
    saveToPreference();
  }

  saveToPreference() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.containsKey('isDark')){
      _isDark = sharedPreferences.getBool('isDark') ?? false;
    } else {
      sharedPreferences.setBool('isDark', _isDark);
    }
    notifyListeners();
  }

  changeThemePreference() async {
    bool isDark;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    isDark = sharedPreferences.getBool('isDark') ?? false;
    isDark = !isDark;
    sharedPreferences.setBool('isDark', isDark);
    _isDark = isDark;
    notifyListeners();
  }


}
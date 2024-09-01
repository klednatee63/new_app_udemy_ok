import 'package:flutter/material.dart';

class DarkProvider extends ChangeNotifier {
  bool darkMode;

  DarkProvider({this.darkMode = false});

  void setDarkMode() {
    darkMode = !darkMode;
    notifyListeners();
  }
}

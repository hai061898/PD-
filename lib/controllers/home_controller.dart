import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int selectedIndex = 0;
  void onChangeSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
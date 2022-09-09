import 'package:flutter/material.dart';

class TabManager extends ChangeNotifier {

  int selectedTab = 0;

  void goToTab(index) {
    selectedTab = index;
    notifyListeners();
  }

  void goToMenu() {
    selectedTab = 0;
    notifyListeners();
  }

  void goToLocations() {
    selectedTab = 1;
    notifyListeners();
  }

  void goToTests() {
    selectedTab = 2;
    notifyListeners();
  }

  void goToAbout() {
    selectedTab = 3;
    notifyListeners();
  }

}
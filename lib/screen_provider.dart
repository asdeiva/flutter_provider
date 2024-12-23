import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'settings_screen.dart';

class ScreenProvider extends ChangeNotifier {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    SettingsScreen(),
  ];

  int get currentIndex => _currentIndex;

  Widget get currentScreen => _screens[_currentIndex];

  void setScreen(int index) {
    _currentIndex = index;
    notifyListeners(); // Notify listeners about the change
  }
}


class SideBarProvider extends ChangeNotifier {
  late Widget _currentScreen;
  String? selectedClassId;

  Widget get currentScreen => _currentScreen;

  void setScreen(Widget screen, String classId) {
    _currentScreen = screen;
    selectedClassId = classId;
    notifyListeners();
  }
}
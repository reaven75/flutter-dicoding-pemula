




import 'package:flutter/material.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int _indexBottomNavigation = 0;

  int get indexBottomNavigation => _indexBottomNavigation;

  set setIndexBottomNavigationBar(int value){
    _indexBottomNavigation = value;
    notifyListeners();
  }

}


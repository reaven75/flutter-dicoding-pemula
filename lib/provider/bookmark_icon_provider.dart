


import 'package:flutter/material.dart';

class BookmarkIconProvider extends ChangeNotifier{



  bool _isBookmark = false;


  bool get isBookmarked => _isBookmark;


  set isBookmarked(bool value){
    _isBookmark = value;
    notifyListeners();
  }
}
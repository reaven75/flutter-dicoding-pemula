


import 'package:flutter/widgets.dart';
import 'package:flutter_pemula_1/data/type_of_cat.dart';

class BookmarkProvider extends ChangeNotifier {

  final List<AdoptionCat> _bookmarkList = [];

  List<AdoptionCat> get bookmarkList => _bookmarkList;


  bool isBookmarked(AdoptionCat cat){
    return _bookmarkList.contains(cat);
  }

  void toggleBookmarked(AdoptionCat cat){
    if(isBookmarked(cat)){
      _bookmarkList.remove(cat);
    } else {
      _bookmarkList.add(cat);
    }
    notifyListeners();
  }



}
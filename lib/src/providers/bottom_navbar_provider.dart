

import 'package:flutter/material.dart';

class BottomNavBarProvider extends ChangeNotifier{

  int _selectedMenuOpt = 0;

  int get selectedMenuOpt {
    return this._selectedMenuOpt;
  }

  set selectedMenuOpt( int i){
    this._selectedMenuOpt = i;
    notifyListeners();
  }

}
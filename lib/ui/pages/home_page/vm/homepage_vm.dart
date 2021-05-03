import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supercharged/supercharged.dart';

class HomePageVM extends ChangeNotifier{
  bool isSloganTooltipVisible = false;
  bool isHoveringAsterisk = false;
  bool isHoveringTooltip = false;

  setSloganTooltipVisibility(bool visibility){
    isSloganTooltipVisible = visibility;
    notifyListeners();
  }

}

final HomePageVMProvider = ChangeNotifierProvider((_)=> HomePageVM());
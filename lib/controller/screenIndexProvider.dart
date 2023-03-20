import 'package:flutter/material.dart';

  class screenIndexProvider extends ChangeNotifier {
  int _tabFlag = 0;

  int get tabFlag => _tabFlag;

  set tabFlag(int value) {
  _tabFlag = value;
  notifyListeners();
  }
  }
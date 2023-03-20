import 'package:finalproject23/Consts/Defaultimages.dart';
import 'package:finalproject23/Model/home_model.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
int _tabFlag = 0;

int get tabFlag => _tabFlag;

set tabFlag(int value) {
  _tabFlag = value;
  notifyListeners();
}
  List<HomeModel> homeList = [
    HomeModel("محمد", DefaultImages.profile),
    HomeModel("حسام", DefaultImages.profile),
    HomeModel("عبدالله", DefaultImages.profile),
    HomeModel("احمد", DefaultImages.profile),
  ];


}

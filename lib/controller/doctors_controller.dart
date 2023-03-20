import 'package:finalproject23/Consts/Defaultimages.dart';
import 'package:finalproject23/Model/doctors_model.dart';
import 'package:flutter/material.dart';

class DoctorsController extends ChangeNotifier {
  int _tabFlag = 0;

  int get tabFlag => _tabFlag;

  set tabFlag(int value) {
    _tabFlag = value;
    notifyListeners();
  }
  List<DoctorsModel> doctorsList = [
    DoctorsModel("محمد", DefaultImages.profile),
    DoctorsModel("حسام", DefaultImages.profile),
    DoctorsModel("عبدالله", DefaultImages.profile),
    DoctorsModel("احمد", DefaultImages.profile),
  ];
  List<String> categoryList = [
    "ALL",
    "BRUNCH",
    "DINNER",
    "BURGERS",
    "CHINESE",
    "PIZZA",
    "SALADS",
    "SOUPS",
    "BREAKFAST",
  ];
  List<bool> categorySelectList = [
    false,
    false,
    false,
    true,
    false,
    false,
    false,
    false,
    false,
  ];
  List<String> dietaryList = [
    "ANY",
    "VEGETARIAN",
    "VEGAN",
    "GLUTEN-FREE",
  ];
  List<bool> dietarySelectList = [
    true,
    false,
    false,
    false,
  ];
  List<String> priceRangeList = [
    "\$",
    "\$\$",
    "\$\$\$",
    "\$\$\$\$",
    "\$\$\$\$\$",
  ];
  List<bool> priceRangeSelectList = [
    false,
    true,
    false,
    false,
    false,
  ];
}
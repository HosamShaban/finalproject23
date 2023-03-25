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
}
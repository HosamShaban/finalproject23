import 'package:finalproject23/Consts/colors.dart';
import 'package:flutter/material.dart';

class MeasureScreen extends StatelessWidget {
  const MeasureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstColors.primaryColor,
        title: const Text(
          "Screen 4",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

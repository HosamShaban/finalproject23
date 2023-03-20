import 'package:finalproject23/Consts/colors.dart';
import 'package:flutter/material.dart';

class DateScreen extends StatelessWidget {
  const DateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstColors.primaryColor,
        title: const Text(
          "Screen 2",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

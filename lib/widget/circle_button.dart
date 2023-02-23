import 'package:flutter/material.dart';

import '../Consts/colors.dart';

class CircleButton extends StatelessWidget {
  final bool isGreen;
  final bool isAdd;
  const CircleButton({Key? key, this.isGreen = true, this.isAdd = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: isGreen ? ConstColors.primaryColor : ConstColors.backgroundColor,
          borderRadius: BorderRadius.circular(50),
          child: Icon(
            isAdd ? Icons.add : Icons.remove,
            size: 20,
            color: Colors.white,
          ),
          onTap: () {},
        ),
      ),
    );
  }
}

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  BottomButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10.0),
          color: kBottomContainerColor,
          width: double.infinity,
          height: kBottomContainerHeight,
          child: Text(
            title.toUpperCase(),
            style: kLargeButtonTextStyle,
          )),
    );
  }
}

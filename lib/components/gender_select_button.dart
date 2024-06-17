import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class GenderSelectButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Function onTap;
  GenderSelectButton({required this.icon, required this.text, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      onTap: onTap,
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 80,),
          SizedBox(
            height: 15.0,
          ),
          Text(
            text.toUpperCase(),
            style: kLabelTextStyle,
          ),
        ],
      ),
    );
  }
}

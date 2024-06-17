import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? child;
  Function onTap;
  ReusableCard({required this.color, this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () => onTap(),
      child: Container(
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}

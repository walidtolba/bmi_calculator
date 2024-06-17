import 'package:flutter/material.dart';


class MyCustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  MyCustomButton({required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      onPressed: onPressed,
      child: child,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

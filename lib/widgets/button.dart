import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  VoidCallback onTap;
  String buttonText;
  double? buttonWidth;
  double? buttonHeight;

  Button({
    super.key,
    required this.onTap,
    required this.buttonText,
    required this.buttonHeight,
    required this.buttonWidth,

    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(buttonWidth!, buttonHeight!)
      ),
      child: Text(buttonText),
    );
  }
}

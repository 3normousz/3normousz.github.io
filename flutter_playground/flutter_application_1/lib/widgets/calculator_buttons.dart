import 'package:flutter/material.dart';

class CalculatorButtons extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callBack;

  const CalculatorButtons({
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      height: 80,
      width: 90,
      child: SizedBox(
        child: TextButton(
          onPressed: () => callBack(text),
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color(fillColor),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(
              Color(textColor),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ),
      ),
    );
  }
}

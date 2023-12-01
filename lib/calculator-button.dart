import 'package:flutter/material.dart';

typedef void CalculatorButtonTapCallback({String buttonText});

class CalculatorButton extends StatelessWidget {
  CalculatorButton({required this.text, required this.onTap});

  final String text;
  final CalculatorButtonTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () => onTap(buttonText: text),
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              width: 0.5,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          )),
    ));
  }
}

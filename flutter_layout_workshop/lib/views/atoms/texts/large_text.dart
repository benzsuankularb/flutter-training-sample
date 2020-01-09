import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  LargeText(this.text, {this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(fontSize: 25),
    );
  }
}

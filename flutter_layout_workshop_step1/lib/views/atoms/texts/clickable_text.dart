import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  ClickableText(this.text, {this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: Colors.blue,
      ),
    );
  }
}

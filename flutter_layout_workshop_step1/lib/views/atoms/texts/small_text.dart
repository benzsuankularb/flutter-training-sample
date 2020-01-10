import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  SmallText(this.text, {this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
    );
  }
}

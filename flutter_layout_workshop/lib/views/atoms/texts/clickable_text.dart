import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  final String text;
  ClickableText(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.blue,
      ),
    );
  }
}

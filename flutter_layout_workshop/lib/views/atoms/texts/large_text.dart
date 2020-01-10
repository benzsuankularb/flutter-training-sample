import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  final String text;
  LargeText(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 23,
      ),
    );
    ;
  }
}

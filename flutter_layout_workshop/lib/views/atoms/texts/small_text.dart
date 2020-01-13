import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  SmallText(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 10,
      ),
    );
  }
}

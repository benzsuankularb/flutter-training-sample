import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/atoms/texts/small_text.dart';

class SmallMaxLoadLabel extends StatelessWidget {
  final double amount;
  SmallMaxLoadLabel({this.amount});

  @override
  Widget build(BuildContext context) {
    return SmallText("Max. THB $amount");
  }
}

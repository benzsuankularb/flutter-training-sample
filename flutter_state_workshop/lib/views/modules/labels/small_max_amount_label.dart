import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/atoms/texts/small_text.dart';

class SmallMaxAmountLabel extends StatelessWidget {
  final double amount;
  SmallMaxAmountLabel({this.amount});

  @override
  Widget build(BuildContext context) {
    return SmallText("Max. THB $amount");
  }
}

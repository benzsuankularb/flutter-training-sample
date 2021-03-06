import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/atoms/texts/large_text.dart';

class RequestAmountLabel extends StatelessWidget {
  final double amount;
  RequestAmountLabel({this.amount});

  @override
  Widget build(BuildContext context) {
    return LargeText("I need THB $amount");
  }
}

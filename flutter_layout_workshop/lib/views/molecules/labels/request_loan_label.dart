import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/atoms/texts/large_text.dart';

class RequestLoanLabel extends StatelessWidget {
  final double amount;
  RequestLoanLabel({this.amount});
  @override
  Widget build(BuildContext context) {
    return LargeText("I need THB $amount");
  }
}

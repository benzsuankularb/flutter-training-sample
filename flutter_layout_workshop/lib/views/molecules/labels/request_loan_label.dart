import 'package:flutter/material.dart';

class RequestLoanLabel extends StatelessWidget {
  final double amount;
  RequestLoanLabel({this.amount});
  @override
  Widget build(BuildContext context) {
    return Text(
      "I need THB $amount",
      style: TextStyle(fontSize: 25),
    );
  }
}

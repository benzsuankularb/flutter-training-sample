import 'package:flutter/material.dart';

class SmallMaxLoadLabel extends StatelessWidget {
  final double amount;
  SmallMaxLoadLabel({this.amount});

  @override
  Widget build(BuildContext context) {
    return Text("Max. THB $amount");
  }
}

import 'package:flutter/material.dart';
import 'package:mobile/views/atoms/texts/small_text.dart';

class AmountLabel extends StatelessWidget {
  final String title;
  final double amount;

  const AmountLabel({
    this.title,
    this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SmallText(title),
          Text(
            "THB $amount",
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}

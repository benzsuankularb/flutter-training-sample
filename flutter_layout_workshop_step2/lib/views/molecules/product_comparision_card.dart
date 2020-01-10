import 'package:flutter/material.dart';
import 'labels/compare_loan_label.dart';

class ProductComparisionCard extends StatelessWidget {
  final Widget child;
  ProductComparisionCard({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: CompareLoadLabel(),
          ),
          SizedBox(height: 15),
          child,
        ],
      ),
    );
  }
}

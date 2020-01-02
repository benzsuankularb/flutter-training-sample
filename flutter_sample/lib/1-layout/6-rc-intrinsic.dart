import 'package:flutter/material.dart';
import 'package:flutter_sample/common/item.dart';

class Sample1_6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Item(),
          Item(scale: 2),
          Item(),
        ],
      ),
    );
  }
}

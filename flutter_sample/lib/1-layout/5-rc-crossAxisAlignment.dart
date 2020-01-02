import 'package:flutter/material.dart';
import 'package:flutter_sample/common/item.dart';

class Sample1_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Column(
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.end,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Item(),
        Item(scale: 2),
        Item(),
      ],
    );
  }
}

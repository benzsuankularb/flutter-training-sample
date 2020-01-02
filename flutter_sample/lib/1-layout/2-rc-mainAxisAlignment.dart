import 'package:flutter/material.dart';
import 'package:flutter_sample/common/item.dart';

class Sample1_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.end,
      // mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Item(),
        Item(),
        Item(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widget_samples/common/item.dart';

class Sample1_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment is no matter
      // mainAxisAlignment: MainAxisAlignment.start

      children: [
        Item(),
        Item(),
        Expanded(flex: 1, child: Item()),
      ],

      // children: [
      //   Expanded(flex: 1, child: Item()),
      //   Expanded(flex: 3, child: Item()),
      //   Expanded(flex: 2, child: Item()),
      // ],
    );
  }
}

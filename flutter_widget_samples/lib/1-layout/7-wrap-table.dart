import 'package:flutter/material.dart';
import 'package:flutter_widget_samples/common/item.dart';

class Sample1_7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Item(),
        Item(),
        Item(),
        Item(),
        Item(),
        Item(),
        Item(),
        Item(),
        Item(),
      ],
    );

    return Wrap(
      // direction: Axis.vertical,
      children: [
        Item(),
        Item(),
        Item(),
        Item(),
        Item(),
        Item(),
        Item(),
        Item(),
      ],
    );

    // TODO Table
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widget_samples/common/item.dart';

class Sample1_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.max,
      mainAxisSize: MainAxisSize.min,
      children: [
        Item(),
        Item(),
        Item(),
      ],
    );
  }
}

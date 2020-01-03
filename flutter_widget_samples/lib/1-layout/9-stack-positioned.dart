import 'package:flutter/material.dart';
import 'package:flutter_widget_samples/common/item.dart';

class Sample1_9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: [
        Positioned(top: 200, left: 100, child: Item()),
        Positioned(top: 20, child: Item()),
      ],
    );
  }
}

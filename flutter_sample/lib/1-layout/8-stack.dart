import 'package:flutter/material.dart';
import 'package:flutter_sample/common/item.dart';

class Sample1_8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Item(),
        // Container(color: Colors.amber),
        Item(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_sample/common/item.dart';

class Sample1_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Column(
    return Row(
      children: [
        Item(),
        Item(),
        Item(),
      ],
    );
  }
}

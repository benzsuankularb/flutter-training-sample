import 'package:flutter/material.dart';
import 'package:flutter_layout_samples/common/item.dart';

class Sample1_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 350,
      color: Colors.amber,
      child: ItemNoSize(),
    );

    // return Container(
    //   height: 500,
    //   width: 350,
    //   color: Colors.amber,
    //   child: ItemWithSize(200, 200),
    // );

    // return Container(
    //   height: 500,
    //   width: 350,
    //   color: Colors.amber,
    //   child: ItemWithSize(200, 200),
    //   alignment: Alignment.center,
    // );
  }
}

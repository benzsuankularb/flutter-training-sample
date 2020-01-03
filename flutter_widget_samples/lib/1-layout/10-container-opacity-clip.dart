import 'package:flutter/material.dart';
import 'package:flutter_widget_samples/common/item.dart';

class Sample1_10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      // height: 300,
      // width: 300,
      // padding: EdgeInsets.all(10),
      child: Item(),
    );

    // return Opacity(
    //   opacity: 1,
    //   // opacity: 0.5,
    //   // opacity: 0,
    //   child: Item(),
    // );

    // return ClipRRect(
    //   // borderRadius: BorderRadius.circular(20),
    //   // borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
    //   child: Item(),
    // );

    // return ClipOval(
    //   child: Item(),
    // );
  }
}

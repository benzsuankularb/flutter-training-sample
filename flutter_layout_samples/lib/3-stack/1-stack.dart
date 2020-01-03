import 'package:flutter/material.dart';
import 'package:flutter_layout_samples/common/item.dart';

class Sample3_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Stack(
        children: [
          ItemNoSize(),
          ItemNoSize(),
        ],
      ),
    );

    // return Container(
    //   color: Colors.amber,
    //   child: Stack(
    //     children: [
    //       ItemWithSize(300, 300),
    //       ItemNoSize(),
    //     ],
    //   ),
    // );

    // return Container(
    //   color: Colors.amber,
    //   child: Stack(
    //     children: [
    //       Container(),
    //       ItemWithSize(300, 300),
    //       ItemNoSize(),
    //     ],
    //   ),
    // );

    // return Container(
    //   color: Colors.amber,
    //   child: Stack(
    //     alignment: Alignment.center,
    //     children: [
    //       Container(),
    //       ItemWithSize(300, 300),
    //       ItemNoSize(),
    //     ],
    //   ),
    // );

    // return Container(
    //   color: Colors.amber,
    //   child: Stack(
    //     alignment: Alignment.topCenter,
    //     children: [
    //       Container(),
    //       ItemWithSize(300, 300),
    //       Positioned(
    //         bottom: 0,
    //         left: 0,
    //         child: ItemNoSize(),
    //       ),
    //     ],
    //   ),
    // );

    // return Container(
    //   color: Colors.amber,
    //   child: Stack(
    //     alignment: Alignment.topCenter,
    //     children: [
    //       Container(),
    //       ItemWithSize(300, 300),
    //       Positioned(
    //         bottom: 0,
    //         left: 0,
    //         right: 50,
    //         child: ItemNoSize(),
    //       ),
    //     ],
    //   ),
    // );
  }
}

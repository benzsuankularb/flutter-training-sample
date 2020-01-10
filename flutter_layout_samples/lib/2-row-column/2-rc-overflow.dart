import 'package:flutter/material.dart';
import 'package:flutter_layout_samples/common/item.dart';

class Sample2_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      // child: Row(
      //   children: [
      //     ItemNoSize(),
      //     ItemNoSize(),
      //     ItemNoSize(),
      //     ItemNoSize(),
      //     ItemNoSize(),
      //     ItemNoSize(),
      //     ItemNoSize(),
      //   ],
      // ),

      child: Wrap(
        direction: Axis.horizontal,
        children: [
          ItemNoSize(),
          ItemNoSize(),
          ItemNoSize(),
          ItemNoSize(),
          ItemNoSize(),
          ItemNoSize(),
          ItemNoSize(),
        ],
      ),
    );
  }
}

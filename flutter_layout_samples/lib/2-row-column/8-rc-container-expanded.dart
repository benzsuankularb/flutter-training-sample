import 'package:flutter/material.dart';
import 'package:flutter_layout_samples/common/item.dart';

class Sample2_8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Row(
        children: [
          ItemNoSize(),
          ItemNoSize(),
          ItemNoSize(),
        ],

        // children: [
        //   ItemNoSize(),
        //   ItemNoSize(),
        //   Expanded(
        //     child: ItemNoSize(),
        //   ),
        // ],

        // children: [
        //   ItemNoSize(),
        //   ItemNoSize(),
        //   Expanded(
        //     child: Container(
        //       color: Colors.purple,
        //       child: ItemNoSize(),
        //       alignment: Alignment.center,
        //     ),
        //   ),
        // ],

        // children: [
        //   ItemNoSize(),
        //   ItemNoSize(),
        //   Expanded(
        //     child: IntrinsicHeight(
        //       child: Container(
        //         color: Colors.purple,
        //         child: ItemNoSize(),
        //         alignment: Alignment.center,
        //       ),
        //     ),
        //   ),
        // ],
      ),
    );
  }
}

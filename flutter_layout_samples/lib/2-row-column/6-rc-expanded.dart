import 'package:flutter/material.dart';
import 'package:flutter_layout_samples/common/item.dart';

class Sample2_6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Row(
        // children: [
        //   ItemNoSize(),
        //   ItemNoSize(),
        //   ItemNoSize(),
        // ],

        // children: [
        //   ItemNoSize(),
        //   ItemNoSize(),
        //   Expanded(
        //     child: ItemNoSize(),
        //   ),
        // ],

        children: [
          Expanded(flex: 1, child: ItemNoSize()),
          Expanded(flex: 3, child: ItemNoSize()),
          Expanded(flex: 2, child: ItemNoSize()),
        ],
      ),
    );
  }
}

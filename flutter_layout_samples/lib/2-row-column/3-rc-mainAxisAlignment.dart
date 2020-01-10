import 'package:flutter/material.dart';
import 'package:flutter_layout_samples/common/item.dart';

class Sample2_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ItemNoSize(),
          ItemNoSize(),
          ItemNoSize(),
        ],
      ),
    );
  }
}

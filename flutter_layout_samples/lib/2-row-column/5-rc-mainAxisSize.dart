import 'package:flutter/material.dart';
import 'package:flutter_layout_samples/common/item.dart';

class Sample2_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Row(
        // mainAxisSize: MainAxisSize.max,
        mainAxisSize: MainAxisSize.min,
        children: [
          ItemNoSize(),
          ItemNoSize(),
          ItemNoSize(),
        ],
      ),
    );
  }
}

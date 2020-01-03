import 'package:flutter/material.dart';
import 'package:flutter_layout_samples/common/item.dart';

class Sample2_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      // child: Row(
      //   // crossAxisAlignment: CrossAxisAlignment.start,
      //   // crossAxisAlignment: CrossAxisAlignment.center,
      //   // crossAxisAlignment: CrossAxisAlignment.end,
      //   // crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     ItemNoSize(),
      //     ItemNoSize(),
      //     ItemNoSize(),
      //   ],
      // ),

      // child: Row(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   // crossAxisAlignment: CrossAxisAlignment.center,
      //   // crossAxisAlignment: CrossAxisAlignment.end,
      //   // crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     ItemNoSize(),
      //     ItemWithSize(200, 200),
      //     ItemNoSize(),
      //   ],
      // ),

      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ItemNoSize(),
            ItemWithSize(200, 200),
            ItemNoSize(),
          ],
        ),
      ),
    );
  }
}

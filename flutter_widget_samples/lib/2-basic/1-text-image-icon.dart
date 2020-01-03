import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sample2_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("This is a text"),
        Image.network(
          "https://cdn6.aptoide.com/imgs/8/1/8/81858634f61125eda9d5dfcc96110666_icon.png?w=100",
        ),
        Icon(
          CupertinoIcons.circle_filled,
        ),
        // RichText(
        //   text: TextSpan(
        //     style: DefaultTextStyle.of(context).style,
        //     children: <TextSpan>[
        //       TextSpan(
        //         text: 'Hello',
        //         style: TextStyle(fontWeight: FontWeight.bold),
        //       ),
        //       TextSpan(text: ' World!'),
        //     ],
        //   ),
        // )
      ],
    );
  }
}

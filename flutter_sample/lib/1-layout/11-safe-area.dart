import 'package:flutter/material.dart';
import 'package:flutter_sample/common/item.dart';

class Sample1_11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(10, (index) {
        return Item();
      }),
    );

    // return SafeArea(
    //   bottom: true,
    //   child: Column(
    //     children: List.generate(10, (index) {
    //       return Item();
    //     }),
    //   ),
    // );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_samples/common/item.dart';

class Sample4_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(10, (index) => Item()),
    );

    // return GridView.count(
    //   crossAxisCount: 3,
    //   crossAxisSpacing: 10,
    //   mainAxisSpacing: 10,
    //   children: List.generate(50, (index) {
    //     return Item();
    //   }),
    // );
  }
}

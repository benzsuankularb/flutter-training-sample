import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample/common/item.dart';

class Sample6_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      width: 100,
      height: 100,
      curve: Curves.easeIn,
      child: Item(),
    );
  }
}

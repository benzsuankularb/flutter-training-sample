import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample/common/item.dart';

class Sample2_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Item(),
      onTap: () => print("tap!!"),
    );
  }
}

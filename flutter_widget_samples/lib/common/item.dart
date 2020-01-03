import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  double scale;

  Item({this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        color: Colors.green,
      ),
      child: Icon(
        CupertinoIcons.bell,
        size: 80 * scale,
      ),
    );
  }
}

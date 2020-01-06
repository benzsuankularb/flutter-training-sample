import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemNoSize extends StatelessWidget {
  ItemNoSize();

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
        size: 80,
      ),
    );
  }
}

class ItemWithSize extends StatelessWidget {
  final double x;
  final double y;

  ItemWithSize(this.x, this.y);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: x,
      height: y,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        color: Colors.green,
      ),
      child: Icon(
        CupertinoIcons.bell,
        size: 80,
      ),
    );
  }
}

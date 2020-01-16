import 'package:flutter/material.dart';

class GenericCard extends StatelessWidget {
  final Widget child;
  GenericCard({this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        color: Colors.white,
        child: child,
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_samples/common/item.dart';

class Sample6_2 extends StatefulWidget {
  @override
  _Sample6_2State createState() => _Sample6_2State();
}

class _Sample6_2State extends State<Sample6_2>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: Item(),
    );
  }
}

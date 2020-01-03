import 'package:flutter/material.dart';

class Sample7_2 extends StatefulWidget {
  @override
  _Sample7_2State createState() => _Sample7_2State();
}

class _Sample7_2State extends State<Sample7_2> {
  String currentStatus = "Fine";
  @override
  void initState() {
    super.initState();
    setState(() {
      currentStatus = "Done";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text("This is a text");
  }
}

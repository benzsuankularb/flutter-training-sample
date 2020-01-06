import 'package:flutter/material.dart';
import '2-basic/2-gestureDetector.dart';
import '6-navigation/3-result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: buildDefault(),
    );
  }

  Widget buildDefault() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Reviews"),
      ),
      body: Container(
        color: Colors.amber,
        child: Sample2_2(),
      ),
    );
  }

  Widget buildRouter() {
    return Sample6_3_FirstRoute();
  }
}

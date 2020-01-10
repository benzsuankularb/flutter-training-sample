import 'package:flutter/material.dart';
import 'package:flutter_layout_samples/1-container/1-empty-container.dart';
import 'package:flutter_layout_samples/2-row-column/4-rc-crossAxisAlignment.dart';

import '2-row-column/3-rc-mainAxisAlignment.dart';
import '2-row-column/5-rc-mainAxisSize.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text("Flutter Layout Sample"),
        ),
        body: Sample1_1(),
      ),
    );
  }
}

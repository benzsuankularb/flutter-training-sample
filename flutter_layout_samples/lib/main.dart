import 'package:flutter/material.dart';

import '1-container/3-container-alignment.dart';
import '1-container/4-container-size.dart';
import '2-row-column/4-rc-crossAxisAlignment.dart';
import '2-row-column/7-rc-container.dart';
import '2-row-column/8-rc-container-expanded.dart';
import '3-stack/1-stack.dart';

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
        body: Sample3_1(),
      ),
    );
  }
}

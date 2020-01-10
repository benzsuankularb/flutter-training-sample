import 'package:flutter/material.dart';
import 'package:flutter_layout_samples/1-container/1-empty-container.dart';

import '1-container/2-container-content.dart';
import '1-container/3-container-alignment.dart';
import '1-container/4-container-size.dart';
import '2-row-column/1-row-column.dart';
import '2-row-column/2-rc-overflow.dart';
import '2-row-column/3-rc-mainAxisAlignment.dart';
import '2-row-column/4-rc-crossAxisAlignment.dart';
import '2-row-column/5-rc-mainAxisSize.dart';
import '2-row-column/6-rc-expanded.dart';
import '2-row-column/7-rc-container.dart';
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

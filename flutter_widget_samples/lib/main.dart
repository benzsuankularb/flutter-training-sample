import 'package:flutter/material.dart';
import 'package:flutter_widget_samples/1-layout/1-row-column.dart';
import '1-layout/2-rc-mainAxisAlignment.dart';
import '1-layout/3-rc-expanded.dart';
import '1-layout/4-rc-mainAxisSize.dart';
import '1-layout/5-rc-crossAxisAlignment.dart';
import '1-layout/6-rc-intrinsic.dart';
import '2-basic/1-text-image-icon.dart';
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
      // routes: {
      //   '/': (context) => FirstScreen(),
      //   '/second': (context) => SecondScreen(),
      // },
      // home: buildRouter(),
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

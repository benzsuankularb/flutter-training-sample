import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/modules/product_comparision_card.dart';
import 'package:flutter_layout_workshop/views/modules/request_amount_card.dart';
import 'package:flutter_layout_workshop/views/organisms/request_amount_model.dart';
import 'package:flutter_layout_workshop/views/pages/product_selection_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.yellow,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: ProductSelectionPage(),
    );
  }
}

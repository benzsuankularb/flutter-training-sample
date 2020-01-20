import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/pages/product_selection_page.dart';

class MainApp extends StatelessWidget {
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

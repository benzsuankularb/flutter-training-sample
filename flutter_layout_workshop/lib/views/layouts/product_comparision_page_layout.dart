import 'package:flutter/material.dart';

class ProductComparisionPageLayout extends StatelessWidget {
  final Widget header;
  final Widget body;
  ProductComparisionPageLayout({this.header, this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          header,
          SizedBox(height: 20),
          body,
        ],
      ),
    );
  }
}

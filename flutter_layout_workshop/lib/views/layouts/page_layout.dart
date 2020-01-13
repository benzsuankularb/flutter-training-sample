import 'package:flutter/material.dart';

class PageLayout01 extends StatelessWidget {
  final Widget body;
  final Widget header;
  PageLayout01({this.body, this.header});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          header,
          body,
        ],
      ),
    );
  }
}

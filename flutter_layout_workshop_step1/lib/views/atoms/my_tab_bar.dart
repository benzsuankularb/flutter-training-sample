import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final List<String> tabs;
  MyTabBar({@required this.tabs}) : assert(tabs != null);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: tabs.map((val) => Tab(text: val)).toList(),
    );
  }
}

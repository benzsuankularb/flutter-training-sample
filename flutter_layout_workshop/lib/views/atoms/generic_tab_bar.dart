import 'package:flutter/material.dart';

class GenericTabBar extends StatelessWidget {
  final List<String> tabs;
  final Function(int index) onIndexChange;

  const GenericTabBar({
    this.tabs,
    this.onIndexChange,
    Key key,
  })  : assert(tabs != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: tabs.map((tab) => Tab(text: tab)).toList(),
      onTap: onIndexChange,
    );
  }
}

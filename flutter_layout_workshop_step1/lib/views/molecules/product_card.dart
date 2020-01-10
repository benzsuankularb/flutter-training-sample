import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/atoms/my_tab_bar.dart';
import 'package:flutter_layout_workshop/views/atoms/texts/title_text.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 7), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(
          color: Colors.white,
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                MyTabBar(
                  tabs: [
                    "AUTO LOAN",
                    "HIGH PURCHASE",
                  ],
                ),
                Placeholder(),
                Container(
                  alignment: Alignment.center,
                  color: Colors.yellow,
                  height: 50,
                  child: TitleText("SELECT"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

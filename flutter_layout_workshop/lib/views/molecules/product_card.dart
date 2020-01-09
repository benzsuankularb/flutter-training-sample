import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/atoms/my_tab_bar.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
                child: Text("SELECT"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

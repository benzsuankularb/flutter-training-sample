import 'package:flutter/material.dart';

import 'labels/compare_loan_label.dart';

class ProductComparisionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.topLeft,
            child: CompareLoanLabel(),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              color: Colors.white,
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Tab(text: "AUTO LOAN"),
                        Tab(text: "HIRE PURCHASE"),
                      ],
                    ),
                    Placeholder(
                      fallbackHeight: 300,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      alignment: Alignment.center,
                      color: Colors.yellow,
                      child: Text("SELECT"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

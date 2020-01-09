import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/atoms/my_card.dart';
import 'package:flutter_layout_workshop/views/atoms/my_tab_bar.dart';
import 'package:flutter_layout_workshop/views/atoms/texts/clickable_text.dart';
import 'package:flutter_layout_workshop/views/atoms/texts/large_text.dart';
import 'package:flutter_layout_workshop/views/atoms/texts/title_text.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCard(
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
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text("Maximum loan amount"),
                        LargeText("THB ${1190000}"),
                        SizedBox(
                          height: 15,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            color: Colors.blue,
                            child: Text("Get cash in 24 hours"),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 1,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text("Payment Term (Months)"),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("12"),
                              Text("24"),
                              Text("36"),
                              Text("48"),
                              Text("60"),
                              Text("72"),
                              Text("84"),
                            ],
                          ),
                        ),
                        Text(
                          "Monthly Payment",
                        ),
                        LargeText(
                          "THB ${1190000}",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ClickableText(
                          "+ SHOW MORE",
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.yellow,
              alignment: Alignment.center,
              height: 50,
              child: TitleText("SELECT"),
            ),
          ],
        ),
      ),
    );
  }
}

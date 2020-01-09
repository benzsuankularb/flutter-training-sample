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
              // Container(
              //   child: Column(
              //     children: [
              //       // Placeholder(
              //       //   fallbackHeight: 120,
              //       // ),
              //       Container(
              //         padding: EdgeInsets.all(20),
              //         child: Column(
              //           children: [
              //             Text("Maximum loan amount"),
              //             Text(
              //               "THB ${1190000}",
              //               style: TextStyle(
              //                 fontSize: 20,
              //               ),
              //             ),
              //             SizedBox(
              //               height: 15,
              //             ),
              //             ClipRRect(
              //               borderRadius: BorderRadius.all(
              //                 Radius.circular(4),
              //               ),
              //               child: Container(
              //                 padding: EdgeInsets.all(5),
              //                 color: Colors.blue,
              //                 child: Text("Get cash in 24 hours"),
              //               ),
              //             )
              //           ],
              //         ),
              //       ),
              //       Placeholder(
              //         fallbackHeight: 200,
              //       ),
              //     ],
              //   ),
              // ),
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

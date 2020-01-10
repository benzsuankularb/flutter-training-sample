import 'package:flutter/material.dart';
import 'package:flutter_layout_workshop/views/atoms/my_slider.dart';
import 'package:flutter_layout_workshop/views/modules/labels/request_amount_label.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.yellow,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hola"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    RequestAmountLabel(
                      amount: 1190000,
                    ),
                    MySlider(
                      onChanged: (v) => {},
                      value: 0,
                      min: 0,
                      max: 1000,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text("Max. THB 1,190,000"),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "+ COMPARE LOANS",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

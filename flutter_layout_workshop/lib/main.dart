import 'package:flutter/material.dart';

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
                    Text(
                      "I need THB 1900000",
                      style: TextStyle(
                        fontSize: 23,
                      ),
                    ),
                    Slider(
                      onChanged: (v) => {},
                      value: 0,
                      min: 0,
                      max: 1000,
                      activeColor: Colors.yellow,
                      inactiveColor: Colors.grey,
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
                    Container(
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

import 'package:flutter/material.dart';

class Sample6_2_FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Sample6_2_SecondRoute(),
                settings: RouteSettings(
                  arguments: "DATA!!!",
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Sample6_2_SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String data = ModalRoute.of(context).settings.arguments;
    print("This is passed data : $data");

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

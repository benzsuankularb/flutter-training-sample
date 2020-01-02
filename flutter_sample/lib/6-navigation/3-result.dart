import 'package:flutter/material.dart';

class Sample6_3_FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () async {
            var result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Sample6_3_SecondRoute(),
              ),
            );
            print("This is a result : $result");
          },
        ),
      ),
    );
  }
}

class Sample6_3_SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context, "RESULT!!!");
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

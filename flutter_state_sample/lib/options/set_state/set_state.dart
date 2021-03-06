import 'package:flutter/material.dart';

class SetStateAppSetup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SetStateScaffold(title: 'Flutter Demo Home Page'),
    );
  }
}

class SetStateScaffold extends StatefulWidget {
  SetStateScaffold({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SetStateScaffoldState createState() => _SetStateScaffoldState();
}

class _SetStateScaffoldState extends State<SetStateScaffold> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

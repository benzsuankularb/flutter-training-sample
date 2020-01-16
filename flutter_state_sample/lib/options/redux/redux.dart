import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_state_sample/options/services/count_service.dart';
import 'package:redux/redux.dart';
import 'counter/actions.dart';
import 'counter/middleware.dart';
import 'counter/reducer.dart';
import 'counter/state.dart';

class ReduxAppSetup extends StatelessWidget {
  static final middleware =
      RandomIncreaseMiddleware(countService: CountService());

  final store = Store<CounterState>(
    counterReducer,
    initialState: CounterState(),
    middleware: <Middleware<CounterState>>[
      middleware.listen,
    ],
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: this.store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ReduxWidget(),
      ),
    );
  }
}

class ReduxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Redux"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StoreConnector<CounterState, int>(
              converter: (store) {
                return store.state.count;
              },
              builder: (_, count) => Text(
                "$count",
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: StoreConnector<CounterState, VoidCallback>(
        converter: (store) {
          return () => store.dispatch(Increase);
        },
        builder: (_, call) => FloatingActionButton(
          onPressed: call,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

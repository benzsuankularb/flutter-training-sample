import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_sample/options/services/count_service.dart';
import './counter_bloc/counter.dart';
import './counter_bloc/state.dart';

class BlocAppSetup extends StatefulWidget {
  @override
  _BlocAppSetupState createState() => _BlocAppSetupState();
}

class _BlocAppSetupState extends State<BlocAppSetup> {
  CounterBloc _bloc;
  void initState() {
    _bloc = CounterBloc(
      counterService: CountService(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (_) => _bloc,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocWidget(),
      ),
    );
  }
}

class BlocWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("BLOC"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            BlocConsumer<CounterBloc, CounterState>(
              listener: (context, state) {},
              builder: (context, state) {
                return Text(
                  "${state.count}",
                  style: Theme.of(context).textTheme.display1,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counterBloc.add(Increased()),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

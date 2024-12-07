import 'package:flutter/material.dart';
import 'function_calculator.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  FunctionCalculator calculator = FunctionCalculator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Counter: $_counter'),
            // Передаємо _counter як double
            Text('y = f($_counter) = ${calculator.calculate(_counter.toDouble())}'),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
              child: Icon(Icons.camera_alt_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:lab15/counter_page.dart';

void main() {
  testWidgets('Counter increments correctly', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: CounterPage(),
    ));

    expect(find.text('Counter: 0'), findsOneWidget);
    expect(find.text('y = f(0) = 12'), findsOneWidget);

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    expect(find.text('Counter: 1'), findsOneWidget);
    expect(find.text('y = f(1) = 12.666666666666666'), findsOneWidget);
  });
}

import 'package:flutter/material.dart';
import 'package:my_app/Widgets/CounterButton.dart';
import 'package:my_app/Widgets/CounterLable.dart';

class Counter extends StatefulWidget {
  // The state is stored not in the widget, but in the specific class
  // that is created by createState()
  @override
  State<Counter> createState() => _CounterState();
  // The result of the function is an object, that must be
  // of the type State<Counter> (where Counter is the name of our widget)
}

class _CounterState extends State<Counter> {
  // Finally, we can declare dynamic variables inside of our classes,
  // to store the state of our widgets

  // In this case, we'll store the number
  int counter = 0;

  // The rest is super simple, we just implement the familiar to us build() method,
  // in the same way as we did it for our [StatelessWidget]
  @override
  Widget build(BuildContext context) {
    // Almost nothing has changed since the last example.
    // I've added comments to highlight the difference
    return Container(
        padding: EdgeInsets.only(bottom: 10),
        margin: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFFD6A02)),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CounterLabel("hello there"),
            CounterButton(
              counter,
              onPressed: () {
                setState(() {
                  ++counter;
                });
              },
            ),
          ],
        ));
  }
}

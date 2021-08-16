 
 import 'package:flutter/material.dart';

 class CounterLabel extends StatelessWidget {
  static const textStyle = TextStyle(
    color: Color(0xFF000000),
    fontSize: 26.0,
  );

  final String _label;
  CounterLabel(this._label);

  @override
  Widget build(BuildContext context) {
    return Text(
      _label,
      style: CounterLabel.textStyle,
    );
  }
}
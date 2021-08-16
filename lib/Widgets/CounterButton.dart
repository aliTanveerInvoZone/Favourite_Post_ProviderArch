
 import 'package:flutter/material.dart';



class CounterButton extends StatelessWidget {
  final count;
  final onPressed;
  CounterButton(this.count, {@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.0),
        decoration: BoxDecoration(
          color: Color(0xFFFD6A02),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Center(
          child: Text(
            '$count',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
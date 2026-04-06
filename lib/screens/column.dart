import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.deepPurple,
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          padding: EdgeInsets.all(0),
          child: const Text(
            "1. TANTAI",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              letterSpacing: 10,
            ),
          ),
        ),
        Container(
          color: Colors.deepPurpleAccent,
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          padding: EdgeInsets.all(40),
          child: const Text(
            "2. TANTAI",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              letterSpacing: 10,
            ),
          ),
        ),
      ],
    );
  }
}
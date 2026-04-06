import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return
      Container (
      color: Colors.deepPurple,
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      padding: EdgeInsets.all(20),
      child: const Text(
        "HOME TANTAI",
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          letterSpacing: 10,
        ),
      ),
    );
  }   
} 
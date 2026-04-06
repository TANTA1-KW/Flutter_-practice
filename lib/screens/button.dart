import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueAccent,
            ),
            child: const Text("Text", style: TextStyle(fontSize: 25)),

            onPressed: () {
              // print("Button Clicked");
            },
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueAccent,
            ),

            child: const Text("Filled", style: TextStyle(fontSize: 25)),

            onPressed: () {},
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.blueAccent,
              side: BorderSide(color: Colors.blueAccent, width: 2),
            ),
            child: const Text("Outlined", style: TextStyle(fontSize: 25)),

            onPressed: () {},
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueAccent,
            ),
            child: const Text("Elevated", style: TextStyle(fontSize: 25)),

            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
// import 'screens/home.dart';
// import 'screens/column.dart';
// import 'screens/pic.dart';
// import 'screens/button.dart';
// import 'screens/items.dart';
import 'screens/list.dart';
// import 'screens/addform.dart';

void main() {
  // const app = MaterialApp(
  //   title: "Title",
  //   home: Text("Hello World"),
  // );
  // runApp(app);
  // runApp(const AddFormState()


  // var app = MaterialApp(
  //   title: "Title",
  //   home: Scaffold(
  //     appBar: AppBar(
  //       title: Text("Flutter Application"),
  //       backgroundColor: Colors.blueAccent,
  //       centerTitle: true,
  //     ),
  //     body: ListWidget(),
  //   ),
  // );
  // runApp(app);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Application',
      home: const ListWidget(),
    );
  }
}

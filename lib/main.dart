import 'package:flutter/material.dart';
import 'package:todoeyy/Screens/Task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        accentColor: Colors.white,
      ),
      home: TasksScreen(),
    );
  }
}

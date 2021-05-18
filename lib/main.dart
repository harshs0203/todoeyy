import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyy/Screens/Task.dart';
import 'package:todoeyy/modals/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.blueGrey,
          accentColor: Colors.white,
        ),
        home: TasksScreen(),
      ),
    );
  }
}

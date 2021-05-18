import 'package:flutter/foundation.dart';
import 'tasks.dart';

class TaskData extends ChangeNotifier{

  List<Task> task =
  [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Oil'),
    Task(name: 'Buy Banana'),
  ];


}
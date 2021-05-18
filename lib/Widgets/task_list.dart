import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoeyy/modals/task_data.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
          taskTitle: Provider.of<TaskData>(context).task[index].name,
          isChecked: Provider.of<TaskData>(context).task[index].isDone,
        checkBoxCallBack:  (bool checkBoxState) {
          // setState(() {
          //   Provider.of<TaskData>(context).task[index].toggleDone();
          // });
        },
      );
    },
    itemCount: Provider.of<TaskData>(context).task.length,
    );
  }
}

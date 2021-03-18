import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked ;
  final String taskTitle ;
  final Function checkBoxCallBack;
  TaskTile({this.isChecked,this.taskTitle,this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontFamily: 'OpenSans',
        ),
      ),
      trailing: Checkbox(
      activeColor: Colors.blueGrey,
    value: isChecked,
    onChanged: checkBoxCallBack,
    ),
    );
  }
}



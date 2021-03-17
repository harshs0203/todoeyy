import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
          checkBoxState: isChecked,
          toggleCheckBox: (bool checkBoxState) {
            setState(() {
              isChecked = checkBoxState;
            });
          }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  TaskCheckBox({this.checkBoxState, this.toggleCheckBox});

  final bool checkBoxState;
  final Function toggleCheckBox;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.blueGrey,
      value: checkBoxState,
      onChanged: toggleCheckBox,
    );
  }
}

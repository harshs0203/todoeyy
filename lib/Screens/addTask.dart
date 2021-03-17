import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0Xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            Text('Add Task',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.blueGrey,
            ),
            ),
            TextField(

            ),
            FlatButton(onPressed: null, child: null),
          ],
        ),
      ),
    );
  }
}

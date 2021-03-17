import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0Xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.blueGrey,
            ),
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                focusColor: Colors.blueGrey,
              ),
              textAlign: TextAlign.center,
            ),
            FlatButton(
                onPressed: (){

                },
                child: Text('Add',
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}

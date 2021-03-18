import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {

  final Function addTaskCallBack;

   AddTask({this.addTaskCallBack});

  @override
  Widget build(BuildContext context) {
     String newTaskTitle;
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
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Fredoka',
              fontSize: 30.0,
              color: Colors.blueGrey,
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              cursorColor: Colors.blueGrey,
              autofocus: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey,width: 5.0),
                  borderRadius: BorderRadius.all(Radius.circular(20.0),),
                ),
              ),
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle= newText;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: FlatButton(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                  onPressed: (){
                   addTaskCallBack(newTaskTitle);
                  },
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                ),
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

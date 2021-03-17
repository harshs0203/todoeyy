import 'package:flutter/material.dart';
import 'package:todoeyy/Widgets/task_list.dart';
import 'package:todoeyy/Screens/addTask.dart';
class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
          child: Icon(Icons.add),
          onPressed: (){
          showModalBottomSheet(context: context, isScrollControlled: true,builder: (context) =>
          SingleChildScrollView(
           child: Container(
             padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
             child: AddTask(),
           ),
          )
          );
          }
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                ),
                ),
                Text('12 tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}




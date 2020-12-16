import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:FlutterToDoApp/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String nameOfTask;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w700),
              ),
              TextField(
                autofocus: true,
                onChanged: (newValue) {
                  nameOfTask = newValue;
                },
              ),
              FlatButton(
                onPressed: () {
                  print(nameOfTask);
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(nameOfTask);
                  Navigator.pop(context);
                },
                child: Text('Add'),
                color: Colors.lightBlueAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}

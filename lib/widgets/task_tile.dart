import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkBoxCallBack;
  final Function onLongPressFunction;

  TaskTile(
      {@required this.title,
      @required this.isChecked,
      @required this.checkBoxCallBack,
      @required this.onLongPressFunction});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: GestureDetector(
          onLongPress: onLongPressFunction,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 21.0,
                decoration: isChecked ? TextDecoration.lineThrough : null),
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: checkBoxCallBack,
          activeColor: Colors.lightBlueAccent,
        ));
  }
}

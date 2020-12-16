import 'package:flutter/material.dart';
import 'package:FlutterToDoApp/widgets/task_tile.dart';

import 'package:provider/provider.dart';
import 'package:FlutterToDoApp/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              title: taskdata.tasks[index].name,
              isChecked: taskdata.tasks[index].isDone,
              checkBoxCallBack: (newValue) {
                taskdata.updateTask(taskdata.tasks[index]);
              },
              onLongPressFunction: () {
                taskdata.updateTaskList(index);
              },
            );
          },
          itemCount: taskdata.tasks.length,
        );
      },
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:FlutterToDoApp/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'BRing veggies'),
    Task(name: 'Bring mobile'),
    Task(name: 'eat food'),
    Task(name: 'eat food'),
  ];
  void addTask(String newTask) {
    final task = Task(name: newTask);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void updateTaskList(int taskIndex) {
    tasks.removeAt(taskIndex);
    notifyListeners();
  }
}


import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/widgets/task_tile.dart';


class TaskData extends ChangeNotifier{
   List<Task> tasks = [
    Task(name: 'Buy garage'),
    Task(name: 'Buy Bonsai'),
    Task(name: 'Buy Gunpla'),
    Task(name: 'Buy tools'),
  ];

  void updatelist(String value){
    tasks.add(Task(name: value));
    notifyListeners();
  }
  void updateCheckbox(Task task){
    task.toggleDone();  
    notifyListeners();
  }
  void deleteTask(Task task){
     tasks.remove(task);
     notifyListeners();
  }
  
  int get taskcount{
    return tasks.length;
  }
}
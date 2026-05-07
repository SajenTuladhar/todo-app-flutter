import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';


class TaskData extends ChangeNotifier{
   List<Task> tasks = [
    Task(name: 'Buy garage'),
    Task(name: 'Buy Bonsai'),
    Task(name: 'Buy Gunpla'),
    Task(name: 'Buy tools'),
  ];

  int get taskcount{
    return tasks.length;
  }
}
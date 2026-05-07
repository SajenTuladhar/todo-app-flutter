import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child){
        return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            isChecked: taskdata.tasks[index].isDone,
            taskTitle: taskdata.tasks[index].name,
            checkboxCallback: (value) {
              // setState(() {
              //   widget.tasks[index].toggleDone();
              // });
            },
          );
        },
        itemCount:taskdata.taskcount,
      );
      }
    );
  }
}

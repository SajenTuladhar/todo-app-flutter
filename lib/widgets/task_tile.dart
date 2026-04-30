import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({required this.isChecked, required this.taskTitle,required this.checkboxCallback, super.key});
  final bool isChecked; 
  final String taskTitle ;
  final ValueChanged<bool?> checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
      activeColor: Colors.grey.shade900,
      value: isChecked,
      onChanged: checkboxCallback,
    )
    );
  }
}




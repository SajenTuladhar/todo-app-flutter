import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is the first task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
        checkBoxState: isChecked,
        toggleCheckbox: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({
    required this.checkBoxState,
    required this.toggleCheckbox,
    super.key,
  });
  final bool checkBoxState;
  final ValueChanged<bool?> toggleCheckbox;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.grey.shade900,
      value: checkBoxState,
      onChanged: toggleCheckbox,
    );
  }
}

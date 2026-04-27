 import 'package:flutter/material.dart';
 
 
 class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is the first task'),
      trailing: Checkbox(value: false, onChanged: (value) => true,),
    );
  }
}

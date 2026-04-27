import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SizedBox(
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 26,
                color: Colors.grey.shade800,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              autofocus: false,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            MaterialButton(
              
              padding: EdgeInsets.all(12),
              color: Colors.grey.shade900,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(12),
              ),
              onPressed: () {},
              child: Text('Add', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

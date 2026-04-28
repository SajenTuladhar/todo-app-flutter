import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 32,
        right: 32,
      ),
      child: SizedBox(
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                color: Colors.grey.shade800,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(border: OutlineInputBorder(),),
            ),
            MaterialButton(
              padding: EdgeInsets.all(12),
              color: Colors.grey.shade900,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(12),
              ),
              onPressed: () {

              },
              child: Text('Add', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

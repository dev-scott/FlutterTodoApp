import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  Function (bool?)? onChanged;

  TodoTile({super.key , required this.taskCompleted , required this.taskName , required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
           Checkbox(value: taskCompleted, onChanged: onChanged),
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

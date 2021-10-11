import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  late final String? taskTitle;
  late final bool? isChecked;
  final checkboxCallback;
  final longPressCallback;

  TaskTile({
    this.isChecked,
    this.taskTitle,
    this.checkboxCallback,
    this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle!,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

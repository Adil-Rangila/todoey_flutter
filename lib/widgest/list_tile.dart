import 'package:flutter/material.dart';

class ListTileTask extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkBoxCallBack;

  ListTileTask({this.taskTitle, this.isChecked, this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}

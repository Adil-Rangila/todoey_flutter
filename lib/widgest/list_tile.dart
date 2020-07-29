import 'package:flutter/material.dart';

class ListTileTask extends StatefulWidget {
  @override
  _ListTileTaskState createState() => _ListTileTaskState();
}

class _ListTileTaskState extends State<ListTileTask> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is MY task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        toggleCheckBox: (bool newValue) {
          setState(() {
            isChecked = newValue;
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckBox;

  TaskCheckBox({this.checkBoxState, this.toggleCheckBox});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckBox,
    );
  }
}

import 'package:flutter/material.dart';
import 'list_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class ListViewTask extends StatefulWidget {
  @override
  _ListViewTaskState createState() => _ListViewTaskState();
}

class _ListViewTaskState extends State<ListViewTask> {
  List<Task> tasks = [
    Task(name: 'Buy SSD'),
    Task(name: 'Buy Laptop'),
    Task(name: 'Buy MAC Pro'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTileTask(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkBoxCallBack: (checked) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}

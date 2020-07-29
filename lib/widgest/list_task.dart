import 'package:flutter/material.dart';
import 'list_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class ListViewTask extends StatefulWidget {
  final List<Task> tasks;

  ListViewTask(this.tasks);

  @override
  _ListViewTaskState createState() => _ListViewTaskState();
}

class _ListViewTaskState extends State<ListViewTask> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTileTask(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkBoxCallBack: (checked) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy SSD'),
    Task(name: 'Buy Laptop'),
    Task(name: 'Buy MAC Pro'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addData(String newTextValue) {
    final task = Task(name: newTextValue);
    _tasks.add(task);
    notifyListeners();
  }
}

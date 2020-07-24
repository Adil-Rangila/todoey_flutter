import 'package:flutter/material.dart';

class ListTileTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is MY task'),
      trailing: Checkbox(value: false, onChanged: null),
    );
  }
}

import 'package:flutter/material.dart';

import 'list_tile.dart';

class ListViewTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTileTask(),
        ListTileTask(),
      ],
    );
  }
}

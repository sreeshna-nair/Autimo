import 'package:flutter/material.dart';
import 'DataStorage.dart';

class DisplayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Page'),
      ),
      body: Center(
        child: DataStorage.taskData.isNotEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: DataStorage.taskData.entries
                    .map((entry) => Text('${entry.key}: ${entry.value}'))
                    .toList(),
              )
            : Text('No Routines to display'),
      ),
    );
  }
}

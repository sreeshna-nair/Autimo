import 'package:flutter/material.dart';
import 'DisplayPage.dart';
import 'DataStorage.dart';


class CreatePage extends StatelessWidget {
  final TextEditingController taskController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  void _createTask(BuildContext context) {
    String task = taskController.text;
    String time = timeController.text;

    // Storing values in the dictionary
    DataStorage.taskData[time] = task;

    // Clearing the text fields
    taskController.clear();
    timeController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Daily Routines'),
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DisplayPage()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Create Task'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller: taskController,
                        decoration: InputDecoration(labelText: 'Task'),
                      ),
                      TextFormField(
                        controller: timeController,
                        decoration:
                            InputDecoration(labelText: 'Time in format hh in 24 hours'),
                      ),
                    ],
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        _createTask(context);
                        Navigator.of(context).pop();
                      },
                      child: Text('CREATE'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('CREATE'),
        ),
      ),
    );
  }
}

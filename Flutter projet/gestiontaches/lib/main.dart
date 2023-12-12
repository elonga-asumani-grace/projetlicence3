import 'package:flutter/material.dart';

void main() => runApp(TaskManagerApp());

class TaskManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      home: TaskListScreen(),
    );
  }
}

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<String> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste de tâches'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addTask(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _addTask(BuildContext context) {
    TextEditingController taskController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Ajouter une tâche'),
          content: TextField(
            controller: taskController,
            decoration: InputDecoration(labelText: 'nom de tâche'),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('quitter'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  tasks.add(taskController.text);
                });
                Navigator.pop(context);
              },
              child: Text('Ajouter'),
            ),
          ],
        );
      },
    );
  }
}

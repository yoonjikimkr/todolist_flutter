import 'package:flutter/material.dart';
import 'package:todolist/create_screen.dart';
import 'package:todolist/main.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do List'),
      ),
      body: ListView(
        children: todos.values
            .map((todo) => ListTile(
                  title: Text(todo.title),
                  subtitle: Text('${todo.dateTime}'),
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

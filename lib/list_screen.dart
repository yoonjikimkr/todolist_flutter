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
        onPressed: () async {
          // CreateScreen에서 listScreen으로 화면으로 다시 돌아올 때까지 기다리도록. 오래 걸리기 때문에 await
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateScreen()),
          );

          setState(() {
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

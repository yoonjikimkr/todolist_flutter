import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do List'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('title 1'),
            subtitle: Text('subtitle 1'),
          ),
          ListTile(
            title: Text('title 1'),
            subtitle: Text('subtitle 1'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.done),)
        ]
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              // borderRadius: BorderRadius.circular(10.0), ; make private가 떠서 아래 코드 찾아봄.
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            hintStyle: TextStyle(color: Colors.grey[400]),
            hintText: 'Enter what to do',
            filled: true,
            fillColor: Colors.white70,
          )
        ),
      ),
    );
  }
}

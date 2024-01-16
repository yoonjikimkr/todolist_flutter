import 'package:flutter/material.dart';
import 'package:todolist/main.dart';
import 'package:todolist/todo.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    // 화면을 벗어날 때 메모리 해제
    _textController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List'), actions: [
        IconButton(
          onPressed: () async {
            await todos.add(Todo(
              title: _textController.text,
              dateTime: DateTime.now().millisecondsSinceEpoch, // int값으로 변환
            ));
            if (mounted) {
              Navigator.pop(context);
            }
          },
          icon: const Icon(Icons.done),
        )
      ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: _textController,
            decoration: InputDecoration(
          border: const OutlineInputBorder(
            // borderRadius: BorderRadius.circular(10.0), ; make private가 떠서 아래 코드 찾아봄.
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          hintStyle: TextStyle(color: Colors.grey[400]),
          hintText: 'Enter what to do',
          filled: true,
          fillColor: Colors.white70,
        )),
      ),
    );
  }
}

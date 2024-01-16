import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todolist/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final Function(Todo) todoOnTap;
  final Function(Todo) todoOnDelete;

  const TodoItem({
    Key? key,
    // todo를 생성자를 통해서 받는다.
    required this.todo,
    required this.todoOnTap,
    required this.todoOnDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        // todo.isDone 값이 반대로 변경되면서 db에 저장되고 다시 그려져야 한다.
        // 클릭됐다고 ListScreen TodoItem에 알린다.
        // -> ListScreen TodoItem에서 db에 접근하여 todo 값을 변경하고,
        // 새로고침해서 새로운 값 todos.values을 받아온다.
        // todoItem은 그걸 가지고 todo.isDone 연산
        // 따라서 callback 처리. 이 안에서 수행할 내용을 바깥에서 수행할 수 있도록 만든다.
        todoOnTap(todo);
      },
      leading: todo.isDone
          ? const Icon(Icons.check_circle, color: Colors.green)
          : const Icon(Icons.check_circle_outline),
      title: Text(
        todo.title,
        style: TextStyle(color: todo.isDone ? Colors.grey : Colors.black),
      ),
      subtitle: Text(
        DateFormat.yMMMd()
            .format(DateTime.fromMillisecondsSinceEpoch(todo.dateTime)),
        style: TextStyle(color: todo.isDone ? Colors.grey : Colors.black),
      ),
      trailing: todo.isDone
        ? GestureDetector(
        onTap: () {
          todoOnDelete(todo);
        },
          child: const Icon(Icons.delete_forever))
          : null,
    );
  }
}

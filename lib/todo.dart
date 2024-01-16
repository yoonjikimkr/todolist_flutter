import 'package:hive/hive.dart';
part 'todo.g.dart';
// db에 저장해야 할 객체를 hive가 알 수 있도록 annotation

class Todo extends HiveObject {
  /* 여기가 바뀌면 adapter가 수정되어야 한다.
  terminal에서 flutter pub run build_runner build하여 .g.dart 변경 */

  @HiveField(0)
  int? id;

  @HiveField(1)
  String title;

  @HiveField(2)
  int dateTime;
  
  @HiveField(3)
  bool isDone;

  Todo({
    required this.title,
    required this.dateTime,
    this.isDone = false,
  });
}

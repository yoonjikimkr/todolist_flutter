import 'package:hive/hive.dart';
part 'todo.g.dart';
// db에 저장해야 할 객체를 hive가 알 수 있도록 annotation
@HiveType(typeId: 0)
class Todo extends HiveObject {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String title;

  @HiveField(2)
  int dateTime;

  Todo({
    required this.title,
    required this.dateTime,
  });
}

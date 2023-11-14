import 'package:hive/hive.dart';

class ToDoDatabase {
  final _myBox = Hive.box('mybox');
  List todoList = [];
  // run this method if this is the first time opening this app
  void createInitialData() {
    todoList = [
      ['Make Tutorial', false],
      ['Do execise', false]
    ];
  }

  // load the data from the data base
  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  // update the data base
  void updateDataBase() {
    _myBox.put('TODOLIST', todoList);
  }
}

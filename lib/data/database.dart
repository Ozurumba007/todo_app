import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference our box

  final _myBox = Hive.box('mybox');

  // run this method if this the first time opening this app
  void createInitialData() {
    toDoList = [
      //  ['Make a new tutorial', false],
      // ['Do Exercise', false],
    ];
  }

  // load data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  // update database
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}

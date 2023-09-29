import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList=[];
  //reference the box
  final _mybox= Hive.box('myBox');

  //run this method if opening app for the first time ever
  void createInitialData(){
    toDoList=[
      ["Create an app",false],
      ["Do exercise",false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  //update database
  void updateDatabase(){
    _mybox.put("TODOLIST",toDoList);
  }
}
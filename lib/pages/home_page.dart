import 'package:flutter/material.dart';
import 'package:todo_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List toDoList = [
    ["Make Tuturial",false],
    ["Do Exercise",true],
  ];

  void checkBoxChanged(bool? value , int index){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text("Todo"),
        elevation: 0,
      ),
      body: ListView.builder( itemCount: toDoList.length ,itemBuilder: (context , index){
        return TodoTile(taskCompleted: toDoList[index][0], taskName: toDoList[index][1], onChanged: (value)=>checkBoxChanged(value , index));
      })
    );
  }
}

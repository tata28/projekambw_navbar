import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "to do",
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Text('Completed', style: TextStyle(fontSize: 60)),
          )),
    );
  }
}

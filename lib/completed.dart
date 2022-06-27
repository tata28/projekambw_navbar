import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Completed extends StatefulWidget {
  const Completed({super.key});

  @override
  State<Completed> createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "completed",
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Text('Completed', style: TextStyle(fontSize: 60)),
          )),
    );
  }
}

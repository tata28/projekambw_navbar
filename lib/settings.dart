import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "settings",
      home: Scaffold(
          appBar: AppBar(title: Text("Compeleted")),
          body: Center(
            child: Text('Completed', style: TextStyle(fontSize: 60)),
          )),
    );
  }
}

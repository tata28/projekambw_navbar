import 'package:coba_navbar/completed.dart';
import 'package:coba_navbar/focus_session.dart';
import 'package:coba_navbar/home.dart';
import 'package:coba_navbar/settings.dart';
import 'package:coba_navbar/task_details.dart';
import 'package:coba_navbar/to_do.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    FocusSession(),
    TaskDetails(),
    ToDo(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Menu",
      home: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            // unselectedItemColor: Color(0xffFFC0BFBF),
            backgroundColor: Colors.black,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/img/home.png")),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/img/focus_session.png")),
                label: 'Focus Session',
                backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/img/to_do_list.png")),
                label: 'Task Details',
                backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/img/completed.png")),
                label: 'Completed',
                backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/img/settings.png")),
                label: 'Settings',
                backgroundColor: Colors.transparent,
              ),
            ]),
      ),
    );
  }
}

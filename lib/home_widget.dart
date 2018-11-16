import 'package:flutter/material.dart';
import 'package:learn_flutter/TabLayouts/tab_1.dart';
import 'package:learn_flutter/TabLayouts/tab_2.dart';
import 'package:learn_flutter/TabLayouts/tab_3.dart';
import 'package:learn_flutter/TabLayouts/tab_4.dart';
import 'package:learn_flutter/TabLayouts/tab_5.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Tab1(),
    Tab2(),
    Tab3(),
    Tab4(),
    Tab5()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LearnFlutter"),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.looks_one),
              title: new Text(
                'Tab1',
              )),
          BottomNavigationBarItem(
              icon: new Icon(Icons.looks_two),
              title: new Text(
                'Tab2',
              )),
          BottomNavigationBarItem(
              icon: new Icon(Icons.looks_3),
              title: new Text(
                'Tab3',
              )),
          BottomNavigationBarItem(
              icon: new Icon(Icons.looks_4),
              title: new Text(
                'Tab4',
              )),
          BottomNavigationBarItem(
              icon: new Icon(Icons.looks_5),
              title: new Text(
                'Tab5',
              )),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

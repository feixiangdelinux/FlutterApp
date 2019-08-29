import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDemoState();
  }

}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  void onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTapHandler,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), title: Text('课程')),
          BottomNavigationBarItem(
              icon: Icon(Icons.list), title: Text('题库')),
          BottomNavigationBarItem(
              icon: Icon(Icons.portrait), title: Text('个人'))
        ]);
  }
}

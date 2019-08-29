import 'package:flutter/material.dart';
import 'package:flutter_appp/demo/bottom_navigation_bar_demo.dart';
import 'package:flutter_appp/demo/drawer_demo.dart';
import 'package:flutter_appp/demo/listview_demo.dart';

//cd /opt/flutter/bin
//flutter doctor
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white,
          primarySwatch: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('刘忠正,你离回家种红薯不远了'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint("右侧按钮点了"),
            )
          ],
          elevation: 0.0,
          bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike))
              ]),
        ),
        body: TabBarView(children: <Widget>[
          ListViewDemo(),
          Icon(Icons.change_history, size: 128.0, color: Colors.black12),
          Icon(Icons.directions_bike, size: 128.0, color: Colors.black12)
        ]),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}

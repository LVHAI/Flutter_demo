import 'package:flutter/material.dart';

class NavigationBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: ClickedNavBarDemo(),
    );
  }
}

class SimpleNavBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleNavBarDemo'),
      ),
//      body: ,
    bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('商务')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.my_location),
              title: Text('定位')
          ),
        ]
    ),
    );
  }
}

class ClickedNavBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ClickedNavBarDemoState();
}
class ClickedNavBarDemoState extends State<ClickedNavBarDemo> {
  int _current_index = 0;
  final List<Widget> _pages = [
    HomePage(),
    BusinessPage(),
    MyLocationPage()
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ClickedNavBarDemoState'),
      ),
      body: _pages[_current_index],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
fixedColor: Colors.redAccent,
//        unselectedLabelStyle: TextStyle(color: Colors.orange),
        unselectedItemColor: Colors.grey,
//        selectedItemColor: Colors.orange,
        currentIndex: _current_index,
        onTap: (int index) {
          setState(() {
            this._current_index = index;
          });
        },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('首页')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.business),
                title: Text('商务')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.my_location),
                title: Text('定位')
            ),
          ]
      ),
    );
  }
}

//首页页面
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      color: Colors.redAccent,
      child: Text('首页', style: TextStyle(
        color: Colors.black,
        fontSize: 40.0
      ),),
    );
  }
}
//商务页面
class BusinessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      color: Colors.redAccent,
      child: Text('商务', style: TextStyle(
          color: Colors.black,
          fontSize: 40.0
      ),),
    );
  }
}
//定位页面
class MyLocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      color: Colors.redAccent,
      child: Text('定位', style: TextStyle(
          color: Colors.black,
          fontSize: 40.0
      ),),
    );
  }
}
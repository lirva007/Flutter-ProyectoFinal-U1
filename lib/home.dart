import 'package:flutter/material.dart';
import './pages/bienvenida.dart';
import './pages/skills.dart';

class Home extends StatefulWidget {
  Home({required Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Bienvenida(),
    Skills(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void onSelectItem(int index) {
    Navigator.of(context).pop();
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magda Flores", style: TextStyle(fontSize: 25.0)),
        centerTitle: true,
      ), // AppBar
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName:
                  Text('Magdalena Flores', style: TextStyle(fontSize: 20.0)),
              accountEmail:
                  Text('lirva.a.g@gmail.com', style: TextStyle(fontSize: 15.0)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text('D', style: TextStyle(fontSize: 40.0)),
              ), // CircleAvatar
            ), // UserAccountsDrawerHeader
            ListTile(
                leading: Icon(Icons.home),
                title: Text('Bienvenida'),
                selected: (0 == _currentIndex),
                onTap: () {
                  onSelectItem(0);
                }),
            ListTile(
                leading: Icon(Icons.stars),
                title: Text('Skills'),
                selected: (1 == _currentIndex),
                onTap: () {
                  onSelectItem(1);
                }),
          ], // <Widget>[]
        ), // ListView
      ), // Drawer
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stars),
            title: Text('Skills'),
            backgroundColor: Colors.blue,
          ),
        ],
      ), // BottonNavigationBar
      body: _children[_currentIndex],
    );
  }
}

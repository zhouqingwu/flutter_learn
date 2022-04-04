import 'package:flutter/material.dart';
import 'tabs/home.dart';
import 'tabs/list.dart';
import 'tabs/settings.dart';

class Tabs extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final int index;
  const Tabs({Key? key, this.index = 0}) : super(key: key);
  static const routeName = '/';

  @override
  // ignore: no_logic_in_create_state
  State<Tabs> createState() => _TabsState(index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List _pageList = const [
    HomePage(),
    ListPage(),
    SettingsPage(),
  ];

  _TabsState(index) {
    _currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 36.0,
        fixedColor: Colors.blue,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "List",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

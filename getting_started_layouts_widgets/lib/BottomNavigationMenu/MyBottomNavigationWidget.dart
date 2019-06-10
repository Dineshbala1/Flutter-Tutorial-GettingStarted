import 'package:flutter/material.dart';
import 'package:getting_started_layouts_widgets/Drawer/drawerWidget.dart';

import 'BottomBarMenuScreens/HomeScreenWidget.dart';

class BottomNavigationBarStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavigationBarApp();
  }
}

class BottomNavigationBarApp extends State<BottomNavigationBarStatefulWidget> {
  int _selectedIndex = 0;

  void updateSelection(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _tabScreens = <Widget>[
    HomeScreenWidget(),
    Center(child: Text('Chat Screen')),
    Center(child: Text('Settings Screen'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Layout & Widgets'),
        ),
        drawer: MyDrawer(),
        body: _tabScreens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Widgets')),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat), title: Text('Chat')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                title: Text('Settings')),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            updateSelection(index);
          },
        ));
  }
}
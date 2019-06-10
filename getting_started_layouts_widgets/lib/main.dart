import 'package:flutter/material.dart';
import 'BottomNavigationMenu/MyBottomNavigationWidget.dart';

void main() => runApp(MyMasterDetailsPage());

class MyMasterDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout & Widgets',
      home: BottomNavigationBarStatefulWidget(),
      theme: ThemeData(primaryColor: Colors.deepPurple, accentColor: Colors.deepPurpleAccent, buttonColor: Colors.deepPurple),
    );
  }
}

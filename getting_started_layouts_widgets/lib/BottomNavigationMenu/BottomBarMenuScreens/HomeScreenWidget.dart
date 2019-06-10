import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getting_started_layouts_widgets/BottomNavigationMenu/BottomBarMenuScreens/CollapsibleAppBar.dart';
import 'package:getting_started_layouts_widgets/BottomNavigationMenu/BottomBarMenuScreens/SpinnerLayout.dart';
import 'package:getting_started_layouts_widgets/Routes/customMaterialRoute.dart';

import 'GridViewLayout.dart';
import 'HomeScreenBackground.dart';
import 'HorizontalListViewLayout.dart';

class HomeScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      HomeScreenBackground(),
      Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('List view'),
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                    context,
                    CustomMaterialRoute(
                        builder: (context) => HorizontalListViewLayout()));
              },
            )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child:RaisedButton(
          child: Text('Grid view'),
          textColor: Colors.white,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GridViewLayout()));
          },
        )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child:RaisedButton(
          child: Text('Progress indicator widget'),
          textColor: Colors.white,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SpinnerLayout()));
          },
        )),
        Padding(
            padding: EdgeInsets.all(8.0),
            child:RaisedButton(
          child: Text('Collapsible app bar'),
          textColor: Colors.white,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CollapsibleLayout()));
          },
        ))
      ])
    ]));
  }
}

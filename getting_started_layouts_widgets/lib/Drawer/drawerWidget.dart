import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getting_started_layouts_widgets/Drawer/screens/firstpage.dart';
import 'package:getting_started_layouts_widgets/Drawer/screens/secondPage.dart';
import 'package:getting_started_layouts_widgets/Routes/customMaterialRoute.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(elevation: 3,
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          margin: EdgeInsets.zero,
          accountEmail: Text('xxxxxxx@gmail.com'),
          accountName: Text('xxxxxxx-xxxxx'),
          currentAccountPicture: CircleAvatar(
            radius: 80.0,
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=450'),
          ),
          decoration: BoxDecoration(color: Colors.deepPurple),
        ),
        ListTile(
          title: Text('First Page'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                new CustomMaterialRoute(builder: (context) => FirstPage()));
          },
        ),
        ListTile(
          title: Text('Second Page'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => SecondPage()));
          },
        ),
        ListTile(
          title: Text('Third Page'),
          onTap: () {},
        )
      ],
    ));
  }
}

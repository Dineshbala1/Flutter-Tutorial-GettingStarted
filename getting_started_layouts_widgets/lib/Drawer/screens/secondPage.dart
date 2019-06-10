import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Second Page')),
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Text('Second page content'),
                RaisedButton(
                  onPressed: () {
                    print('Button got clicked');
                  },
                )
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('First Page')),
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Text('First page content'),
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

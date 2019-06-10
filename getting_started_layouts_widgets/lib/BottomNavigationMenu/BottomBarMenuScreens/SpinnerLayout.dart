import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpinnerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress indicator'),
      ),
      body: _widget(),
    );
  }

  Widget _widget() {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator())),
        Padding(padding: EdgeInsets.all(8.0), child: LinearProgressIndicator()),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: RefreshIndicator(
              child: Text('OnRefresh child'),
              onRefresh: () {},
            ))
      ],
    ));
  }
}

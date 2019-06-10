import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
      appBar: AppBar(title: Text('Horizontal List View')),
      body: SizedBox(
          child: GridView.builder(
              itemCount: 30,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.all(20),
              addAutomaticKeepAlives: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, int position) => SizedBox(
                  child: Card(
                      elevation: 1.5,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: new EdgeInsets.all(8.0),
                        decoration: new BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius:
                                new BorderRadius.all(new Radius.circular(10.0)),
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black54,
                                  offset: new Offset(2.0, 2.0),
                                  blurRadius: 5.0)
                            ]),
                        child: new Row(
                          children: <Widget>[
                            new CircleAvatar(
                              backgroundColor: Colors.white70,
                              radius: 50.0,
                            ),
                            new Expanded(
                                child: new Padding(
                              padding: new EdgeInsets.only(left: 4.0),
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  new Text(
                                    'Position'+ position.toString(),
                                    style: new TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  new Row(
                                    children: <Widget>[
                                      new Icon(
                                        Icons.star,
                                        color: Colors.white,
                                      ),
                                      new Icon(
                                        Icons.star,
                                        color: Colors.white,
                                      ),
                                      new Icon(
                                        Icons.star,
                                        color: Colors.white,
                                      ),
                                      new Icon(
                                        Icons.star_half,
                                        color: Colors.white,
                                      ),
                                      new Icon(
                                        Icons.star_border,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  new Wrap(
                                    spacing: 2.0,
                                    children: <Widget>[
                                      new Chip(label: new Text('Position'))
                                    ],
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                      )))),
        ),
    );
  }
}
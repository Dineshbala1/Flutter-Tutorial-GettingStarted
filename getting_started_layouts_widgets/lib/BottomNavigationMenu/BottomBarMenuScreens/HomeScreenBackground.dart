import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreenBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(builder: (context, constraint) {
      final height = constraint.maxHeight;
      final width = constraint.maxWidth;
      return Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          color: Color(0xFFE4E6F1),
        ),
        Positioned(
            left: -(height / 2 - width / 2),
            bottom: height * 0.25,
            child: Container(
                height: height,
                width: height,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    shape: BoxShape.circle))),
        Positioned(
            left: width * 0.25,
            top: -(width * 0.25),
            child: Container(
                height: width * 0.90,
                width: width * 0.90,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    shape: BoxShape.circle))),
        Positioned(
            right: -width * 0.20,
            top: -width * 0.25,
            child: Container(
                height: width * 0.6,
                width: width * 0.6,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.6),
                    shape: BoxShape.circle)))
      ]);
    });
  }
}

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({this.icon, this.color, this.name});
  static const _height = 100.0;
  static const _borderRadius = 50.0;
  final IconData icon;
  final Color color;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(_borderRadius),
        child: InkWell(
          highlightColor: color,
          onTap: () {
            print('I was tapped');
          },
          child: Container(
            height: _height,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(
                      icon,
                      size: 60.0,
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(fontSize: 24.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class EasyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text('That was easy!!!'),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Material(
        shape: CircleBorder(),
        child: Container(
          alignment: AlignmentDirectional.center,
          width: 300.0,
          height: 300.0,
          color: Colors.red,
          child: Text(
            'easy',
            style: TextStyle(
                fontSize: 110.0,
				fontStyle: FontStyle.italic,
                fontFamily: 'Slabo',
                color: Colors.white70),
          ),
        ),
      ),
    );
  }
}

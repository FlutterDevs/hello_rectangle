import 'package:flutter/material.dart';
import 'package:hello_rectangle/easy_button.dart';

class ConverterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text('Easy Button'),
      backgroundColor: Colors.redAccent,
      elevation: 0.0,
    );

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: EasyButton(),
      ),
    );
  }
}

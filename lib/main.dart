import 'package:flutter/material.dart';
import 'package:hello_rectangle/category_screen.dart';
import 'package:hello_rectangle/converter_screen.dart';

void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) => CategoryScreen(),
        '/': (BuildContext context) => ConverterScreen(),
      },
      //   theme: ThemeData(
      //     primaryColor: Colors.green[100],
      //     canvasColor: Colors.green[100],
      //   ),
    );
  }
}

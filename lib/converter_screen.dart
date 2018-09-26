import 'package:flutter/material.dart';
import 'package:study_jam/unit.dart';

class ConverterScreen extends StatefulWidget {
  final List<Unit> units;
  final String categoryName;
  final Color categoryColor;

  const ConverterScreen({
    @required this.categoryName,
    @required this.categoryColor,
    @required this.units,
  })  : assert(categoryName != null),
        assert(categoryColor != null),
        assert(units != null);

  @override
  _ConverterScreenState createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  @override
  Widget build(BuildContext context) {
    final unitWidgets = widget.units.map((Unit unit) {
      return Container(
        color: widget.categoryColor,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            )
          ],
        ),
      );
    }).toList();
    return ListView(
      children: unitWidgets,
    );
  }
}

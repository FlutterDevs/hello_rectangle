import 'package:flutter/material.dart';
import 'package:study_jam/unit.dart';

class Category {
  final String iconLocation;
  final ColorSwatch color;
  final String name;
  final List<Unit> units;
  const Category({
    @required this.iconLocation,
    @required this.color,
    @required this.name,
    @required this.units,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        assert(units != null);
}

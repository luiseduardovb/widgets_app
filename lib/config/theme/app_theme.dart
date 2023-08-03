import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected Color must be greater than 0'),
        assert(selectedColor <= colorList.length - 1,
            'Selected Color must be less or equal than ${colorList.length}');

  ThemeData getTheme() => ThemeData(
      colorSchemeSeed: colorList[selectedColor],
      useMaterial3: true,
      appBarTheme: const AppBarTheme(centerTitle: false));
}

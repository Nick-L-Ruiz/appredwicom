import 'package:flutter/material.dart';

const Color customColor = Color(0xFFD86D43);
const List<Color> colorThemes = [
  customColor,
  Color(0xFFEC0303),
  Colors.greenAccent,
  Color(0xFFE6467B),
  Colors.purple,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0 }):assert(selectedColor >= 0 && selectedColor <= colorThemes.length-1, 'Colors bust between 0 and ${colorThemes.length}');

  ThemeData theme() {
    return ThemeData(useMaterial3: true, colorSchemeSeed: colorThemes[selectedColor]);
  }
}

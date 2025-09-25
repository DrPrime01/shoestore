import 'package:flutter/material.dart';

class CustomChipTheme {
  CustomChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withValues(alpha: 0.5),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    checkmarkColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
  );
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withValues(alpha: 0.5),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    checkmarkColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
  );
}

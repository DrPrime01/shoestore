import 'package:flutter/material.dart';
import 'package:shoestore/utils/themes/custom_themes/appbar_theme.dart';
import 'package:shoestore/utils/themes/custom_themes/bottom_sheet_theme.dart';
import 'package:shoestore/utils/themes/custom_themes/checkbox_theme.dart';
import 'package:shoestore/utils/themes/custom_themes/chip_theme.dart';
import 'package:shoestore/utils/themes/custom_themes/elevated_button_theme.dart';
import 'package:shoestore/utils/themes/custom_themes/outlined_button_theme.dart';
import 'package:shoestore/utils/themes/custom_themes/text_field_theme.dart';
import 'package:shoestore/utils/themes/custom_themes/text_theme.dart';

class CustomTheme {
  CustomTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CustomTextTheme.lightTextTheme,
    chipTheme: CustomChipTheme.lightChipTheme,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    checkboxTheme: CustomCheckboxTheme.lightCheckboxTheme,
    inputDecorationTheme: CustomTextFieldTheme.lightIputDecorationTheme,
    bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: CustomTextTheme.darkTextTheme,
    chipTheme: CustomChipTheme.darkChipTheme,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    checkboxTheme: CustomCheckboxTheme.darkCheckboxTheme,
    inputDecorationTheme: CustomTextFieldTheme.darkIputDecorationTheme,
    bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,
  );
}

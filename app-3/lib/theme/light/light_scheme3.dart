import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/constants/color_constants.dart';

/// Описание светлой темы, схема №3
ThemeData selectedLightScheme3 = ThemeData.light().copyWith(
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 18),
      foregroundColor: ColorConstants.outlineButton,
      minimumSize: const Size.fromHeight(48),
      side: const BorderSide(color: ColorConstants.outlineButton),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  ),
  textTheme: const TextTheme(
    titleSmall: TextStyle(color: ColorConstants.textTitleSchema3, fontSize: 16),
    titleMedium:
        TextStyle(color: ColorConstants.textValueLightSchema3, fontSize: 16),
  ),
  appBarTheme: const AppBarTheme(
      color: ColorConstants.backgroundLight,
      iconTheme: IconThemeData(color: ColorConstants.radioSelectedSchema3)),
  iconTheme: const IconThemeData(color: ColorConstants.radioSelectedSchema3),
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
              ColorConstants.radioSelectedSchema3))),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      minimumSize: MaterialStateProperty.all<Size>(const Size.fromHeight(48)),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(
          ColorConstants.elevatedButtonSchema3),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
  ),
  scaffoldBackgroundColor: ColorConstants.backgroundLight,
  radioTheme: RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color>(
      (states) {
        if (states.contains(MaterialState.selected)) {
          return ColorConstants.radioSelectedSchema3;
        }
        return ColorConstants.radioInactiveSchema3;
      },
    ),
  ),
);

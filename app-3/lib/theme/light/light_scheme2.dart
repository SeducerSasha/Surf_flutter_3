import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/constants/color_constants.dart';

/// Описание светлой темы, схема №2
ThemeData selectedLightScheme2 = ThemeData.light().copyWith(
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
    titleSmall: TextStyle(color: ColorConstants.textTitleSchema2, fontSize: 16),
    titleMedium:
        TextStyle(color: ColorConstants.textValueLightSchema2, fontSize: 16),
  ),
  appBarTheme: const AppBarTheme(
      color: ColorConstants.backgroundLight,
      iconTheme: IconThemeData(color: ColorConstants.radioSelectedSchema2)),
  iconTheme: const IconThemeData(color: ColorConstants.radioSelectedSchema2),
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
              ColorConstants.radioSelectedSchema2))),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      minimumSize: MaterialStateProperty.all<Size>(const Size.fromHeight(48)),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(
          ColorConstants.elevatedButtonSchema2),
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
          return ColorConstants.radioSelectedSchema2;
        }
        return ColorConstants.radioInactiveSchema2;
      },
    ),
  ),
);

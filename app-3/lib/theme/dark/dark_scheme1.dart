import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/constants/color_constants.dart';

/// Описание темной темы, схема №1
ThemeData selectedDarkScheme1 = ThemeData.dark().copyWith(
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
    titleSmall: TextStyle(color: ColorConstants.textTitleSchema1, fontSize: 16),
    titleMedium:
        TextStyle(color: ColorConstants.textValueDarkSchema1, fontSize: 16),
  ),
  appBarTheme: const AppBarTheme(
      color: ColorConstants.backgroundDark,
      iconTheme: IconThemeData(color: ColorConstants.radioSelectedSchema1)),
  iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
              ColorConstants.radioSelectedSchema1))),
  iconTheme: const IconThemeData(color: ColorConstants.radioSelectedSchema1),
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
              ColorConstants.radioSelectedSchema1))),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      minimumSize: MaterialStateProperty.all<Size>(const Size.fromHeight(48)),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(
          ColorConstants.elevatedButtonSchema1),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
  ),
  scaffoldBackgroundColor: ColorConstants.backgroundDark,
  radioTheme: RadioThemeData(
    splashRadius: 10,
    fillColor: MaterialStateProperty.resolveWith<Color>(
      (states) {
        if (states.contains(MaterialState.selected)) {
          return ColorConstants.radioSelectedSchema1;
        }
        return ColorConstants.radioInactiveSchema1;
      },
    ),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Color(0xFF222222),
  ),
);

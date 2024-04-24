import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/theme/light/light_scheme1.dart';
import 'package:surf_flutter_courses_template/theme/light/light_scheme2.dart';
import 'package:surf_flutter_courses_template/theme/light/light_scheme3.dart';

/// Получение темы выбранной схемы
class AppThemeLight {
  static ThemeData get lightScheme1 => selectedLightScheme1;
  static ThemeData get lightScheme2 => selectedLightScheme2;
  static ThemeData get lightScheme3 => selectedLightScheme3;
}

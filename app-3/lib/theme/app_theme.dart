// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:surf_flutter_courses_template/constants/text_constants.dart';
import 'package:surf_flutter_courses_template/theme/dark/dark_theme.dart';
import 'package:surf_flutter_courses_template/theme/light/light_theme.dart';

enum PreferencesTheme { system, light1, light2, light3, dark1, dark2, dark3 }

class AppTheme extends InheritedWidget {
  /// Тема хранится в виде числа:
  /// 0 - системная
  /// 1 - светлая. 1,2,3 используются под светлые схемы
  /// 4 - темная. 4,5,6 используются по темные схемы

  final PreferencesTheme currentTheme;
  const AppTheme({
    super.key,
    required this.currentTheme,
    required super.child,
  });

  /// Применение изменений темы
  // void toggleTheme() {
  //   notifyListeners();
  // }

  ///Определяем имя темы для вывода на экран профиля
  String get nameTheme {
    switch (currentTheme) {
      case PreferencesTheme.light1:
        return TextConstants.textThemeLigth;
      case PreferencesTheme.light2:
        return TextConstants.textThemeLigth;
      case PreferencesTheme.light3:
        return TextConstants.textThemeLigth;
      case PreferencesTheme.dark1:
        return TextConstants.textThemeDark;
      case PreferencesTheme.dark2:
        return TextConstants.textThemeDark;
      case PreferencesTheme.dark3:
        return TextConstants.textThemeDark;

      default:
        return TextConstants.textThemeSystem;
    }
  }

  /// Определение режима: темная, светлая или системная
  ThemeMode get themeMode {
    switch (currentTheme) {
      case PreferencesTheme.light1:
        return ThemeMode.light;
      case PreferencesTheme.light2:
        return ThemeMode.light;
      case PreferencesTheme.light3:
        return ThemeMode.light;
      case PreferencesTheme.dark1:
        return ThemeMode.dark;
      case PreferencesTheme.dark2:
        return ThemeMode.dark;
      case PreferencesTheme.dark3:
        return ThemeMode.dark;

      default:
        return ThemeMode.system;
    }
  }

  /// Определение выбранной схемы светлой темы.
  /// По умолчанию для системной используется схема №1
  ThemeData get lightTheme {
    switch (currentTheme) {
      case PreferencesTheme.light1:
        return AppThemeLight.lightScheme1;
      case PreferencesTheme.light2:
        return AppThemeLight.lightScheme2;
      case PreferencesTheme.light3:
        return AppThemeLight.lightScheme3;
      default:
        return AppThemeLight.lightScheme1;
    }
  }

  /// Определение выбранной схемы темной темы.
  /// По умолчанию для системной используется схема №1
  ThemeData get darkTheme {
    switch (currentTheme) {
      case PreferencesTheme.dark1:
        return AppThemeDark.darkScheme1;
      case PreferencesTheme.dark2:
        return AppThemeDark.darkScheme2;
      case PreferencesTheme.dark3:
        return AppThemeDark.darkScheme3;
      default:
        return AppThemeDark.darkScheme1;
    }
  }

  static AppTheme? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppTheme>();
  }

  static AppTheme of(BuildContext context) {
    final AppTheme? result = maybeOf(context);
    return result!;
  }

  @override
  bool updateShouldNotify(AppTheme oldWidget) {
    return currentTheme != oldWidget.currentTheme;
  }
}

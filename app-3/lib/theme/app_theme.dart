import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:surf_flutter_courses_template/constants/text_constants.dart';
import 'package:surf_flutter_courses_template/theme/dark/dark_theme.dart';
import 'package:surf_flutter_courses_template/theme/light/light_theme.dart';

class AppTheme with ChangeNotifier {
  /// Тема хранится в виде числа:
  /// 0 - системная
  /// 1 - светлая. 1,2,3 используются под светлые схемы
  /// 4 - темная. 4,5,6 используются по темные схемы
  int selectedTheme = 0;
  int selectedScheme = 0;
  String nameSelectedTheme = '';

  /// Применение изменений темы
  void toggleTheme() {
    notifyListeners();
  }

  ///Определяем имя темы для вывода на экран профиля
  String get nameTheme {
    switch (selectedTheme + selectedScheme) {
      case 1:
        return TextConstants.textThemeLigth;
      case 2:
        return TextConstants.textThemeLigth;
      case 3:
        return TextConstants.textThemeLigth;
      case 4:
        return TextConstants.textThemeDark;
      case 5:
        return TextConstants.textThemeDark;
      case 6:
        return TextConstants.textThemeDark;

      default:
        return TextConstants.textThemeSystem;
    }
  }

  /// Определение режима: темная, светлая или системная
  ThemeMode get themeMode {
    switch (selectedTheme + selectedScheme) {
      case 1:
        return ThemeMode.light;
      case 2:
        return ThemeMode.light;
      case 3:
        return ThemeMode.light;
      case 4:
        return ThemeMode.dark;
      case 5:
        return ThemeMode.dark;
      case 6:
        return ThemeMode.dark;

      default:
        return ThemeMode.system;
    }
  }

  /// Определение выбранной схемы светлой темы.
  /// По умолчанию для системной используется схема №1
  ThemeData get lightTheme {
    switch (selectedTheme + selectedScheme) {
      case 1:
        return AppThemeLight.lightScheme1;
      case 2:
        return AppThemeLight.lightScheme2;
      case 3:
        return AppThemeLight.lightScheme3;
      default:
        return AppThemeLight.lightScheme1;
    }
  }

  /// Определение выбранной схемы темной темы.
  /// По умолчанию для системной используется схема №1
  ThemeData get darkTheme {
    switch (selectedTheme + selectedScheme) {
      case 4:
        return AppThemeDark.darkScheme1;
      case 5:
        return AppThemeDark.darkScheme2;
      case 6:
        return AppThemeDark.darkScheme3;
      default:
        return AppThemeDark.darkScheme1;
    }
  }

  /// Чтение информации о теме и схемах из хранилища
  initializationTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    selectedTheme = prefs.getInt('theme') ?? 0;
    selectedScheme = prefs.getInt('scheme') ?? 0;
    toggleTheme();
  }

  /// Запись выбранной темы и схемы в хранилище
  saveTheme(final int selectedTheme, final int selectedScheme) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('theme', selectedTheme);
    await prefs.setInt('scheme', selectedScheme);
  }
}

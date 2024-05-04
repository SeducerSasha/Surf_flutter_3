import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/presentation/profile_screen.dart';
import 'package:surf_flutter_courses_template/shared.dart';
import 'package:surf_flutter_courses_template/theme/app_theme.dart';
import 'package:surf_flutter_courses_template/theme/current_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // late AppTheme currentTheme = AppTheme();

  @override
  void initState() {
    super.initState();

    /// Чтение данных о выбранной теме/схеме из хранилища
    //currentTheme.initializationTheme();
    /// Добавляем подписку на изменение темы
    // currentTheme.addListener(() {
    //   setState(() {});
    // });
  }

  @override
  Widget build(BuildContext context) {
    PreferencesTheme currentTheme = EnumToString.fromString(
            PreferencesTheme.values,
            ValueTheme().readThemeFromSharedPreferences().toString()) ??
        PreferencesTheme.system;

    return AppTheme(
      currentTheme: currentTheme,
      child: MaterialApp(
        /// Назначаем светлую и темную тему, прочитанную из хранилища
        /// И устанавливаем режим в зависимости от темы
        debugShowCheckedModeBanner: false,
        theme: AppTheme.of(context).lightTheme,
        darkTheme: AppTheme.of(context).darkTheme,
        themeMode: AppTheme.of(context).themeMode,
        home: const ProfileScreen(),
      ),
    );
  }
}

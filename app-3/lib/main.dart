import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/presentation/profile_screen.dart';
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
  @override
  void initState() {
    super.initState();

    /// Чтение данных о выбранной теме/схеме из хранилища
    currentTheme.initializationTheme();

    /// Добавляем подписку на изменение темы
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// Назначаем светлую и темную тему, прочитанную из хранилища
      /// И устанавливаем режим в зависимости от темы
      debugShowCheckedModeBanner: false,
      theme: currentTheme.lightTheme,
      darkTheme: currentTheme.darkTheme,
      themeMode: currentTheme.themeMode,
      home: const ProfileScreen(),
    );
  }
}

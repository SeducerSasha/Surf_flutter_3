import 'package:enum_to_string/enum_to_string.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:surf_flutter_courses_template/theme/app_theme.dart';

class ValueTheme {
  /// Чтение информации о теме и схемах из хранилища
  Future<String> readThemeFromSharedPreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('theme') ?? 'system';
  }

  saveThemeToSharedPreferences(final PreferencesTheme selectedTheme) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', selectedTheme.toString());
  }
}

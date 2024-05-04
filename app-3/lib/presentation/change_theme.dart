import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/constants/assets_constants.dart';
import 'package:surf_flutter_courses_template/constants/color_constants.dart';
import 'package:surf_flutter_courses_template/constants/text_constants.dart';
import 'package:surf_flutter_courses_template/theme/app_theme.dart';
import 'package:surf_flutter_courses_template/theme/current_theme.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({
    Key? key,
  }) : super(key: key);

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  @override
  Widget build(BuildContext context) {
    PreferencesTheme _currentTheme = AppTheme.of(context).currentTheme;
    return Column(
      /// Описание возможных тем: системная, светлая и темная
      children: [
        ListTile(
          title: const Text(TextConstants.textThemeSystem),
          leading: Radio(
            value: PreferencesTheme.system,
            groupValue: _currentTheme,
            // .currentTheme
            // .selectedTheme, //currentTheme.selectedTheme,
            onChanged: (value) {
              /// При выборе меняем значения выбранной темы
              setState(() {
                _currentTheme = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text(TextConstants.textThemeLigth),
          leading: Radio(
            value: PreferencesTheme.light1,
            groupValue: _currentTheme,
            onChanged: (value) {
              setState(() {
                /// При выборе меняем значения выбранной темы
                _currentTheme = value!;
              });
            },
          ),
        ),
        VisibleScheme(
          /// Определяем, показывать выбор схемы или нет
          visible: (_currentTheme == PreferencesTheme.light1) ? true : false,
        ),
        ListTile(
          title: const Text(TextConstants.textThemeDark),
          leading: Radio(
            value: PreferencesTheme.dark1,
            groupValue: _currentTheme,
            onChanged: (value) {
              /// При выборе меняем значения выбранной темы
              setState(() {
                _currentTheme = value!;
              });
            },
          ),
        ),
        VisibleScheme(
          /// Определяем, показывать выбор схемы или нет
          visible: (_currentTheme == PreferencesTheme.dark1) ? true : false,
        ),
        const Expanded(child: SizedBox()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: ElevatedButton(
            onPressed: () {
              /// Возвращаемся на главный экран
              Navigator.of(context).pop(_currentTheme);
            },
            child: const Text(TextConstants.textDone),
          ),
        ),
      ],
    );
  }
}

class VisibleScheme extends StatefulWidget {
  final bool visible;

  const VisibleScheme({
    Key? key,
    required this.visible,
  }) : super(key: key);

  @override
  State<VisibleScheme> createState() => _VisibleSchemeState();
}

class _VisibleSchemeState extends State<VisibleScheme> {
  @override
  Widget build(BuildContext context) {
    PreferencesTheme _currentTheme = AppTheme.of(context).currentTheme;
    ThemeMode themeMode = AppTheme.of(context).themeMode;

    /// Меняем декорацию контейнера в зависимости от выбора схемы
    BoxDecoration decorationContainer(final selectedTheme) {
      if (_currentTheme == selectedTheme) {
        return BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Theme.of(context).iconTheme.color!),
        );
      } else {
        return BoxDecoration(borderRadius: BorderRadius.circular(6));
      }
    }

    /// Меняет стиль текста в зависимости от выбора схемы
    TextStyle? textStyle(final selectedTheme) {
      if (_currentTheme == selectedTheme) {
        return Theme.of(context).textTheme.titleMedium ??
            const TextStyle(color: ColorConstants.black);
      } else {
        return Theme.of(context).textTheme.titleSmall ??
            const TextStyle(color: ColorConstants.black);
      }
    }

    /// Показываем выбор схем при выборе светлой или темной схемы
    return (widget.visible)
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(TextConstants.textColorScheme),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            /// При выборе схемы меняем значения
                            _currentTheme = themeMode == ThemeMode.light
                                ? PreferencesTheme.light1
                                : PreferencesTheme.dark1;

                            // AppTheme.of(context).nameTheme;
                          });
                        },
                        child: Container(
                          height: 64,
                          decoration: decorationContainer(0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(AssetsConstants.scheme1),
                              Text(TextConstants.textScheme1,
                                  style: textStyle(0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            /// При выборе схемы меняем значения
                            _currentTheme = themeMode == ThemeMode.light
                                ? PreferencesTheme.light2
                                : PreferencesTheme.dark2;
                            // AppTheme.of(context).nameTheme;
                          });
                        },
                        child: Container(
                          height: 64,
                          decoration: decorationContainer(1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(AssetsConstants.scheme2),
                              Text(TextConstants.textScheme2,
                                  style: textStyle(1)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            /// При выборе схемы меняем значения
                            _currentTheme = themeMode == ThemeMode.light
                                ? PreferencesTheme.light3
                                : PreferencesTheme.dark3;
                            //AppTheme.of(context).nameTheme;
                          });
                        },
                        child: Container(
                          height: 64,
                          decoration: decorationContainer(2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(AssetsConstants.scheme3),
                              Text(TextConstants.textScheme3,
                                  style: textStyle(2)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )

        /// Для тем, которые не выбраны - показываем "пустоту" вместо схем
        : const SizedBox.shrink();
  }
}

import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/constants/text_constants.dart';
import 'package:surf_flutter_courses_template/constants/text_style.dart';
import 'package:surf_flutter_courses_template/theme/app_theme.dart';
import 'package:surf_flutter_courses_template/theme/current_theme.dart';

class AppBarScreen extends StatelessWidget implements PreferredSizeWidget {
  const AppBarScreen({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      /// Вывод AppBar
      toolbarHeight: 56,
      centerTitle: true,
      title: const Text(
        TextConstants.textProfile,
        style: TextStyleConstants.size18bold,
      ),
      leading: const Icon(
        Icons.arrow_back,
      ),
      actions: [
        TextButton(
          /// Сохраняем выбранную тему и схему в хранилище
          onPressed: () {},
          // onPressed: () async {
          //   await AppTheme().saveTheme(
          //       CurrentThemeInherited.of(context).currentTheme.selectedTheme,
          //       CurrentThemeInherited.of(context).currentTheme.selectedScheme);
          // },
          child: const Text(
            TextConstants.textSave,
          ),
        )
      ],
    );
  }
}

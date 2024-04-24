// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/constants/assets_constants.dart';
import 'package:surf_flutter_courses_template/constants/text_constants.dart';
import 'package:surf_flutter_courses_template/presentation/change_theme.dart';
import 'package:surf_flutter_courses_template/theme/current_theme.dart';

/// Вывод основного тела экрана с применением текущей темы/схемы
class BodyScreen extends StatelessWidget {
  const BodyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        children: [
          /// Аватар
          Image.asset(
            AssetsConstants.avatar,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            TextConstants.textMyAwards,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: 12,
          ),

          /// Награды (медали)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AssetsConstants.medal1),
              const SizedBox(
                width: 16,
              ),
              Image.asset(AssetsConstants.medal1),
              const SizedBox(
                width: 16,
              ),
              Image.asset(AssetsConstants.medal3),
              const SizedBox(
                width: 16,
              ),
              Image.asset(AssetsConstants.medal2),
              const SizedBox(
                width: 16,
              ),
              Image.asset(AssetsConstants.medal3),
            ],
          ),
          const SizedBox(
            height: 24,
          ),

          /// Основная информация профиля
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /// Вывод данных осуществляется с передачей параметров
                /// title - обязательный - заголовок
                /// value - обязательный - текст
                /// icons - необязательный - иконка, которая будет справа
                /// showBottomSheet - необязательный - будет ли открываться BottomSheet
                const ProfileValue(
                  title: TextConstants.textNameTitle,
                  value: TextConstants.textNameValue,
                ),
                const ProfileValue(
                  title: TextConstants.textEMailTitle,
                  value: TextConstants.textEMailValue,
                ),
                const ProfileValue(
                  title: TextConstants.textBirthDateTitle,
                  value: TextConstants.textBirthDateValue,
                ),
                const ProfileValue(
                  title: TextConstants.textTeamTitle,
                  value: TextConstants.textTeamValue,
                  icons: Icons.arrow_forward_ios_outlined,
                ),
                const ProfileValue(
                  title: TextConstants.textPositionTitle,
                  value: TextConstants.textPositionValue,
                  icons: Icons.arrow_forward_ios_outlined,
                ),
                ProfileValue(
                  title: TextConstants.textThemeTitle,
                  value: currentTheme.nameTheme,
                  icons: Icons.arrow_forward_ios_outlined,
                  showBottomSheet: true,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child:
                OutlinedButton(onPressed: () {}, child: const Text('Log out')),
          )
        ],
      ),
    );
  }
}

/// Вывод элемента профиля
class ProfileValue extends StatefulWidget {
  final String title;
  final String value;
  final IconData? icons;
  final bool? showBottomSheet;

  const ProfileValue({
    Key? key,
    required this.title,
    required this.value,
    this.icons,
    this.showBottomSheet,
  }) : super(key: key);

  @override
  State<ProfileValue> createState() => _ProfileValueState();
}

class _ProfileValueState extends State<ProfileValue> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration(
              color: Theme.of(context).bottomSheetTheme.backgroundColor,
              borderRadius: BorderRadius.circular(16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  //Если выводится информация о теме - указываем выбранную тему
                  Text(
                    widget.showBottomSheet == true
                        ? currentTheme.nameTheme
                        : widget.value,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),

              /// Если в параметре передана иконка и передан параметр вызовы BottomSheet
              (widget.icons != null)
                  ? IconButton(
                      onPressed: () async {
                        if (widget.showBottomSheet ?? false) {
                          await showModalBottomSheet(
                            context: context,
                            //backgroundColor: CheckColors.whiteColor,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(24))),
                            builder: (context) {
                              return const ChangeTheme();
                            },
                          );

                          /// Перерисовываем экран после выбора темы.
                          currentTheme.toggleTheme();
                          setState(() {
                            currentTheme.nameTheme;
                          });
                        }
                      },
                      icon: Icon(widget.icons))
                  : const SizedBox.shrink(),
            ],
          ),
        )
      ],
    );
  }
}

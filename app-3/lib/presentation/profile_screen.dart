import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/presentation/appbar_screen.dart';
import 'package:surf_flutter_courses_template/presentation/body_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /// Вывод аппбара и основного тела экрана
      appBar: AppBarScreen(),
      body: BodyScreen(),
    );
  }
}

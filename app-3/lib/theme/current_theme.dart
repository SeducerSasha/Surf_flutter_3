// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:surf_flutter_courses_template/theme/app_theme.dart';

// class CurrentThemeInherited extends InheritedWidget {
//   final AppTheme currentTheme;

//   const CurrentThemeInherited({
//     super.key,
//     required this.currentTheme,
//     required super.child,
//   });

//   static CurrentThemeInherited? maybeOf(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<CurrentThemeInherited>();
//   }

//   static CurrentThemeInherited of(BuildContext context) {
//     final CurrentThemeInherited? result = maybeOf(context);

//     return result!;
//   }

//   @override
//   bool updateShouldNotify(CurrentThemeInherited oldWidget) =>
//       currentTheme != oldWidget.currentTheme;
// }

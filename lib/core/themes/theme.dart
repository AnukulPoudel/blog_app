import 'package:blog_app/core/themes/app_palate.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // static final _border = OutlineInputBorder(
  //   borderRadius: BorderRadius.circular(10),
  //   borderSide: const BorderSide(color: AppPallete.borderColor, width: 3),
  // );

  static _border([Color borderColor = AppPallete.borderColor]) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: borderColor,
          width: 3,
        ),
      );

  static final darkThemeMode = ThemeData(
    colorScheme: const ColorScheme.dark().copyWith(
      surface: AppPallete.backgroundColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(24),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient2),
    ),
  );
}

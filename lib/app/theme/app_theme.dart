import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/generated/assets/fonts.gen.dart';

part 'app_colors.dart';
part 'app_text_style.dart';
part 'ext/app_text_style_ext.dart';

class AppThemeData {
  AppThemeData._();

  static ThemeData lightTheme = themeData(AppColors(Brightness.light));
  static ThemeData darkTheme = themeData(AppColors(Brightness.dark));

  static ThemeData themeData(AppColors appColor) {
    return ThemeData(
      useMaterial3: true,
      brightness: appColor.brightness,
      fontFamily: FontFamily.sFPro,
      // Custom text theme here
      // textTheme: _AppTextStyle.textTheme(appColor),
      colorSchemeSeed: const Color(0xffde496e),
    );
  }
}

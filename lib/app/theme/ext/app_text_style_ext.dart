// ignore_for_file: constant_identifier_names, unused_element
part of '../app_theme.dart';

class AppTextStyleExt {
  AppTextStyleExt._();

  static AppTextStyleExt get of => AppTextStyleExt._();

  /// Heading 1
  TextStyle? textHeading1 = Get.textTheme.displayLarge;

  /// Heading 2
  TextStyle? textHeading2 = Get.textTheme.displayMedium;

  /// Heading 3
  TextStyle? textHeading3 = Get.textTheme.displaySmall;

  /// Body SemiBold
  TextStyle? textBody1s = Get.textTheme.bodyLarge;

  /// Body Medium
  TextStyle? textBody1m = Get.textTheme.bodyMedium;

  /// Body Regular
  TextStyle? textBody1r = Get.textTheme.bodySmall;

  /// Body Regular Underline
  TextStyle? textBodyRegularUnderline = Get.textTheme.bodySmall?.copyWith(
    decoration: TextDecoration.underline,
  );

  /// Body Regular Underline
  TextStyle? textBodyRegularLineThrough = Get.textTheme.bodySmall?.copyWith(
    decoration: TextDecoration.lineThrough,
  );

  /// Body Regular Italic
  TextStyle? textBodyRegularItalic = Get.textTheme.bodySmall?.copyWith(
    fontStyle: FontStyle.italic,
  );

  /// Subtitle level 1 SemiBold
  TextStyle? textSubTitle1s = Get.textTheme.titleLarge;

  /// Subtitle level 1 Medium
  TextStyle? textSubTitle1m = Get.textTheme.titleMedium;

  /// Subtitle level 1 Regular
  TextStyle? textSubTitle1r = Get.textTheme.titleSmall;

  /// Subtitle level 2 SemiBold
  TextStyle? textSubTitle2s = Get.textTheme.labelLarge;

  /// Subtitle level 2 Medium
  TextStyle? textSubTitle2m = Get.textTheme.labelMedium;

  /// Subtitle level 2 Regular
  TextStyle? textSubTitle2r = Get.textTheme.labelSmall;
}

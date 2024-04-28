part of 'app_theme.dart';

class _AppTextSize {
  static const double size24 = 24;
  static const double size18 = 18;
  static const double size16 = 16;
  static const double size14 = 14;
  static const double size12 = 12;
  static const double size10 = 10;
}

class _AppTextHeight {
  static const double height24_32 = 32 / 24;
  static const double height18_26 = 26 / 18;
  static const double height16_24 = 24 / 16;
  static const double height14_22 = 22 / 14;
  static const double height12_18 = 18 / 12;
  static const double height10_16 = 16 / 10;
}

abstract class _AppTextStyle {
  static FontWeight get semiBold600 => FontWeight.w600;

  static FontWeight get medium500 => FontWeight.w500;

  static FontWeight get regular400 => FontWeight.w400;

  static TextTheme textTheme(AppColors appColor) {
    return TextTheme(
      /// Heading 1
      displayLarge: _textHeading1s.copyWith(
        color: appColor.mainTextColor,
      ),

      /// Heading 2
      displayMedium: _textHeading2s.copyWith(
        color: appColor.mainTextColor,
      ),

      /// Heading 3
      displaySmall: _textHeading3s.copyWith(
        color: appColor.mainTextColor,
      ),

      /// bodyText
      bodyLarge: _textBodyS.copyWith(
        color: appColor.mainTextColor,
      ),
      bodyMedium: _textBodyM.copyWith(
        color: appColor.mainTextColor,
      ),
      bodySmall: _textBodyR.copyWith(
        color: appColor.mainTextColor,
      ),

      /// Subtitle 1
      titleLarge: _subTitle1S.copyWith(
        color: appColor.mainTextColor,
      ),
      titleMedium: _subTitle1M.copyWith(
        color: appColor.mainTextColor,
      ),
      titleSmall: _subTitle1R.copyWith(
        color: appColor.mainTextColor,
      ),

      /// Subtitle 2
      labelLarge: _subTitle2S.copyWith(
        color: appColor.mainTextColor,
      ),
      labelMedium: _subTitle2M.copyWith(
        color: appColor.mainTextColor,
      ),
      labelSmall: _subTitle2R.copyWith(
        color: appColor.mainTextColor,
      ),
    );
  }

  static final TextStyle _textHeading1s = TextStyle(
    height: _AppTextHeight.height24_32,
    fontSize: _AppTextSize.size24,
    fontWeight: semiBold600,
  );

  static final TextStyle _textHeading2s = TextStyle(
    height: _AppTextHeight.height18_26,
    fontSize: _AppTextSize.size18,
    fontWeight: semiBold600,
  );

  static final TextStyle _textHeading3s = TextStyle(
    height: _AppTextHeight.height16_24,
    fontSize: _AppTextSize.size16,
    fontWeight: semiBold600,
  );

  static final TextStyle _textBodyS = TextStyle(
    height: _AppTextHeight.height14_22,
    fontSize: _AppTextSize.size14,
    fontWeight: semiBold600,
  );

  static final TextStyle _textBodyM = TextStyle(
    height: _AppTextHeight.height14_22,
    fontSize: _AppTextSize.size14,
    fontWeight: medium500,
  );

  static final TextStyle _textBodyR = TextStyle(
    height: _AppTextHeight.height14_22,
    fontSize: _AppTextSize.size14,
    fontWeight: regular400,
  );

  static final TextStyle _subTitle1S = TextStyle(
    height: _AppTextHeight.height12_18,
    fontSize: _AppTextSize.size12,
    fontWeight: semiBold600,
  );

  static final TextStyle _subTitle1M = TextStyle(
    height: _AppTextHeight.height12_18,
    fontSize: _AppTextSize.size12,
    fontWeight: medium500,
  );

  static final TextStyle _subTitle1R = TextStyle(
    height: _AppTextHeight.height12_18,
    fontSize: _AppTextSize.size12,
    fontWeight: regular400,
  );

  static final TextStyle _subTitle2S = TextStyle(
    height: _AppTextHeight.height10_16,
    fontSize: _AppTextSize.size10,
    fontWeight: semiBold600,
  );

  static final TextStyle _subTitle2M = TextStyle(
    height: _AppTextHeight.height10_16,
    fontSize: _AppTextSize.size10,
    fontWeight: medium500,
  );

  static final TextStyle _subTitle2R = TextStyle(
    height: _AppTextHeight.height10_16,
    fontSize: _AppTextSize.size10,
    fontWeight: regular400,
  );
}

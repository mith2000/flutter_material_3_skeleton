part of 'app_theme.dart';

abstract class AppColors {
  factory AppColors(Brightness brightness) {
    if (brightness == Brightness.dark) {
      return AppDarkColors();
    }
    return AppLightColors();
  }

  static AppColors get of => AppColors(Get.theme.brightness);

  Brightness get brightness;

  MaterialColor get primaryColor;

  MaterialColor get secondaryColor;

  /// Start Functional Color
  Color get errorColor;

  Color get warningColor;

  Color get successColor;

  Color get processInformColor;

  Color get cancelColor;

  /// End Functional Color

  /// Start Neutral Color
  Color get mainTextColor;

  Color get subTextColor;

  Color get disableColor;

  Color get borderColor;

  Color get dividerColor;

  Color get backgroundColor;

  Color get whiteColor;

  /// End Neutral Color

  /// Start Color palette
  MaterialColor get tealColor;

  MaterialColor get yellowColor;

  MaterialColor get redColor;

  MaterialColor get lightBlueColor;

  MaterialColor get greenColor;

  MaterialColor get orangeColor;

  MaterialColor get purpleColor;

  MaterialColor get pinkColor;

  MaterialColor get darkBlueColor;

  MaterialColor get brownColor;

  MaterialColor get grayColor;

  /// End Color palette
}

class AppLightColors implements AppColors {
  @override
  Brightness get brightness => Brightness.light;

  @override
  MaterialColor get primaryColor => tealColor;

  @override
  MaterialColor get secondaryColor => yellowColor;

  @override
  Color get errorColor => redColor[5] ?? redColor;

  @override
  Color get warningColor => yellowColor[5] ?? yellowColor;

  @override
  Color get successColor => greenColor[5] ?? greenColor;

  @override
  Color get processInformColor => lightBlueColor[5] ?? lightBlueColor;

  @override
  Color get cancelColor => grayColor[6] ?? grayColor;

  @override
  Color get mainTextColor => grayColor[10] ?? grayColor;

  @override
  Color get subTextColor => grayColor[7] ?? grayColor;

  @override
  Color get disableColor => grayColor[5] ?? grayColor;

  @override
  Color get borderColor => grayColor[4] ?? grayColor;

  @override
  Color get dividerColor => grayColor[3] ?? grayColor;

  @override
  Color get backgroundColor => grayColor[2] ?? grayColor;

  @override
  Color get whiteColor => grayColor[1] ?? grayColor;

  @override
  MaterialColor get tealColor => const MaterialColor(
        0xFF00a499,
        {
          1: Color(0xFFE5F6F5),
          2: Color(0xFFC7EBE9),
          3: Color(0xFF8CD6D1),
          4: Color(0xFF4CBFB8),
          5: Color(0xFF00a499),
          6: Color(0xFF00867D),
          7: Color(0xFF00685E),
          8: Color(0xFF005149),
          9: Color(0xFF003B35),
          10: Color(0xFF002B27),
        },
      );

  @override
  MaterialColor get yellowColor => const MaterialColor(
        0xFFFFB81C,
        {
          1: Color(0xFFFFF8E8),
          2: Color(0xFFFFEFCD),
          3: Color(0xFFFFDF99),
          4: Color(0xFFFFCD60),
          5: Color(0xFFFFB81C),
          6: Color(0xFFCC9619),
          7: Color(0xFF997415),
          8: Color(0xFF735A13),
          9: Color(0xFF4C4010),
          10: Color(0xFF332F0E),
        },
      );

  @override
  MaterialColor get redColor => const MaterialColor(
        0xFFF5222D,
        {
          1: Color(0xFFFEE9EA),
          2: Color(0xFFFDCED1),
          3: Color(0xFFFB9CA0),
          4: Color(0xFFF8646C),
          5: Color(0xFFF5222D),
          6: Color(0xFFC91C25),
          7: Color(0xFF9A151C),
          8: Color(0xFF7B1117),
          9: Color(0xFF580C10),
          10: Color(0xFF42090C),
        },
      );

  @override
  MaterialColor get lightBlueColor => const MaterialColor(
        0xFF0089B6,
        {
          1: Color(0xFFE5F3F8),
          2: Color(0xFFC7E5EF),
          3: Color(0xFF8CCADE),
          4: Color(0xFF4CACCC),
          5: Color(0xFF0089B6),
          6: Color(0xFF007094),
          7: Color(0xFF005772),
          8: Color(0xFF004558),
          9: Color(0xFF00323E),
          10: Color(0xFF00262D),
        },
      );

  @override
  MaterialColor get greenColor => const MaterialColor(
        0xFF00A100,
        {
          1: Color(0xFFE5F6E5),
          2: Color(0xFFC7EAC7),
          3: Color(0xFF8CD58C),
          4: Color(0xFF4CBD4C),
          5: Color(0xFF00A100),
          6: Color(0xFF008302),
          7: Color(0xFF006604),
          8: Color(0xFF005006),
          9: Color(0xFF003908),
          10: Color(0xFF002B09),
        },
      );

  @override
  MaterialColor get orangeColor => const MaterialColor(
        0xFFff6000,
        {
          1: Color(0xFFFFEFE5),
          2: Color(0xFFFFDCC7),
          3: Color(0xFFffb78c),
          4: Color(0xFFff904c),
          5: Color(0xFFff6000),
          6: Color(0xFFcc4f02),
          7: Color(0xFF993f04),
          8: Color(0xFF733206),
          9: Color(0xFF4c2608),
          10: Color(0xFF331e09),
        },
      );

  @override
  MaterialColor get purpleColor => const MaterialColor(
        0xFF5e00aa,
        {
          1: Color(0xFFefe5f7),
          2: Color(0xFFdcc7ec),
          3: Color(0xFFb78cd9),
          4: Color(0xFF8e4cc3),
          5: Color(0xFF5e00aa),
          6: Color(0xFF4b038a),
          7: Color(0xFF38056a),
          8: Color(0xFF2a0753),
          9: Color(0xFF1c093b),
          10: Color(0xFF090c1b),
        },
      );

  @override
  MaterialColor get pinkColor => const MaterialColor(
        0xFFff008a,
        {
          1: Color(0xFFffe5f3),
          2: Color(0xFFffc7e5),
          3: Color(0xFFff8cca),
          4: Color(0xFFff4cad),
          5: Color(0xFFff008a),
          6: Color(0xFFcc0371),
          7: Color(0xFF990557),
          8: Color(0xFF730744),
          9: Color(0xFF4c0931),
          10: Color(0xFF330a24),
        },
      );

  @override
  MaterialColor get darkBlueColor => const MaterialColor(
        0xFF001cbc,
        {
          1: Color(0xFFe5e8f8),
          2: Color(0xFFc7cdf0),
          3: Color(0xFF8c99e1),
          4: Color(0xFF4c60d0),
          5: Color(0xFF001cbc),
          6: Color(0xFF001999),
          7: Color(0xFF001675),
          8: Color(0xFF00145b),
          9: Color(0xFF001140),
          10: Color(0xFF000e1d),
        },
      );

  @override
  MaterialColor get brownColor => const MaterialColor(
        0xFFba9461,
        {
          1: Color(0xFFf8f4ef),
          2: Color(0xFFf0e8dc),
          3: Color(0xFFe0cfb8),
          4: Color(0xFFcfb490),
          5: Color(0xFFba9461),
          6: Color(0xFF957950),
          7: Color(0xFF705e3f),
          8: Color(0xFF544a32),
          9: Color(0xFF383525),
          10: Color(0xFF25281c),
        },
      );

  @override
  MaterialColor get grayColor => const MaterialColor(
        0xFF000D0B,
        {
          1: Color(0xFFFFFFFF),
          2: Color(0xFFF5F6FA),
          3: Color(0xFFEBECF0),
          4: Color(0xFFD4D5D9),
          5: Color(0xFFBBBCBF),
          6: Color(0xFF8A8B8C),
          7: Color(0xFF575859),
          8: Color(0xFF414142),
          9: Color(0xFF2A2A2B),
          10: Color(0xFF000D0B),
        },
      );
}

class AppDarkColors implements AppColors {
  @override
  Brightness get brightness => Brightness.dark;

  @override
  MaterialColor get primaryColor => tealColor;

  @override
  MaterialColor get secondaryColor => yellowColor;

  @override
  Color get errorColor => redColor[5] ?? redColor;

  @override
  Color get warningColor => yellowColor[5] ?? yellowColor;

  @override
  Color get successColor => greenColor[5] ?? greenColor;

  @override
  Color get processInformColor => lightBlueColor[5] ?? lightBlueColor;

  @override
  Color get cancelColor => grayColor[6] ?? grayColor;

  @override
  Color get mainTextColor => grayColor[10] ?? grayColor;

  @override
  Color get subTextColor => grayColor[7] ?? grayColor;

  @override
  Color get disableColor => grayColor[5] ?? grayColor;

  @override
  Color get borderColor => grayColor[4] ?? grayColor;

  @override
  Color get dividerColor => grayColor[3] ?? grayColor;

  @override
  Color get backgroundColor => grayColor[2] ?? grayColor;

  @override
  Color get whiteColor => grayColor[1] ?? grayColor;

  @override
  MaterialColor get tealColor => const MaterialColor(
        0xFF00a499,
        {
          1: Color(0xFFE5F6F5),
          2: Color(0xFFC7EBE9),
          3: Color(0xFF8CD6D1),
          4: Color(0xFF4CBFB8),
          5: Color(0xFF00a499),
          6: Color(0xFF00867D),
          7: Color(0xFF00685E),
          8: Color(0xFF005149),
          9: Color(0xFF003B35),
          10: Color(0xFF002B27),
        },
      );

  @override
  MaterialColor get yellowColor => const MaterialColor(
        0xFFFFB81C,
        {
          1: Color(0xFFFFF8E8),
          2: Color(0xFFFFEFCD),
          3: Color(0xFFFFDF99),
          4: Color(0xFFFFCD60),
          5: Color(0xFFFFB81C),
          6: Color(0xFFCC9619),
          7: Color(0xFF997415),
          8: Color(0xFF735A13),
          9: Color(0xFF4C4010),
          10: Color(0xFF332F0E),
        },
      );

  @override
  MaterialColor get redColor => const MaterialColor(
        0xFFF5222D,
        {
          1: Color(0xFFFEE9EA),
          2: Color(0xFFFDCED1),
          3: Color(0xFFFB9CA0),
          4: Color(0xFFF8646C),
          5: Color(0xFFF5222D),
          6: Color(0xFFC91C25),
          7: Color(0xFF9A151C),
          8: Color(0xFF7B1117),
          9: Color(0xFF580C10),
          10: Color(0xFF42090C),
        },
      );

  @override
  MaterialColor get lightBlueColor => const MaterialColor(
        0xFF0089B6,
        {
          1: Color(0xFFE5F3F8),
          2: Color(0xFFC7E5EF),
          3: Color(0xFF8CCADE),
          4: Color(0xFF4CACCC),
          5: Color(0xFF0089B6),
          6: Color(0xFF007094),
          7: Color(0xFF005772),
          8: Color(0xFF004558),
          9: Color(0xFF00323E),
          10: Color(0xFF00262D),
        },
      );

  @override
  MaterialColor get greenColor => const MaterialColor(
        0xFF00A100,
        {
          1: Color(0xFFE5F6E5),
          2: Color(0xFFC7EAC7),
          3: Color(0xFF8CD58C),
          4: Color(0xFF4CBD4C),
          5: Color(0xFF00A100),
          6: Color(0xFF008302),
          7: Color(0xFF006604),
          8: Color(0xFF005006),
          9: Color(0xFF003908),
          10: Color(0xFF002B09),
        },
      );

  @override
  MaterialColor get orangeColor => const MaterialColor(
        0xFFff6000,
        {
          1: Color(0xFFFFEFE5),
          2: Color(0xFFFFDCC7),
          3: Color(0xFFffb78c),
          4: Color(0xFFff904c),
          5: Color(0xFFff6000),
          6: Color(0xFFcc4f02),
          7: Color(0xFF993f04),
          8: Color(0xFF733206),
          9: Color(0xFF4c2608),
          10: Color(0xFF331e09),
        },
      );

  @override
  MaterialColor get purpleColor => const MaterialColor(
        0xFF5e00aa,
        {
          1: Color(0xFFefe5f7),
          2: Color(0xFFdcc7ec),
          3: Color(0xFFb78cd9),
          4: Color(0xFF8e4cc3),
          5: Color(0xFF5e00aa),
          6: Color(0xFF4b038a),
          7: Color(0xFF38056a),
          8: Color(0xFF2a0753),
          9: Color(0xFF1c093b),
          10: Color(0xFF090c1b),
        },
      );

  @override
  MaterialColor get pinkColor => const MaterialColor(
        0xFFff008a,
        {
          1: Color(0xFFffe5f3),
          2: Color(0xFFffc7e5),
          3: Color(0xFFff8cca),
          4: Color(0xFFff4cad),
          5: Color(0xFFff008a),
          6: Color(0xFFcc0371),
          7: Color(0xFF990557),
          8: Color(0xFF730744),
          9: Color(0xFF4c0931),
          10: Color(0xFF330a24),
        },
      );

  @override
  MaterialColor get darkBlueColor => const MaterialColor(
        0xFF001cbc,
        {
          1: Color(0xFFe5e8f8),
          2: Color(0xFFc7cdf0),
          3: Color(0xFF8c99e1),
          4: Color(0xFF4c60d0),
          5: Color(0xFF001cbc),
          6: Color(0xFF001999),
          7: Color(0xFF001675),
          8: Color(0xFF00145b),
          9: Color(0xFF001140),
          10: Color(0xFF000e1d),
        },
      );

  @override
  MaterialColor get brownColor => const MaterialColor(
        0xFFba9461,
        {
          1: Color(0xFFf8f4ef),
          2: Color(0xFFf0e8dc),
          3: Color(0xFFe0cfb8),
          4: Color(0xFFcfb490),
          5: Color(0xFFba9461),
          6: Color(0xFF957950),
          7: Color(0xFF705e3f),
          8: Color(0xFF544a32),
          9: Color(0xFF383525),
          10: Color(0xFF25281c),
        },
      );

  @override
  MaterialColor get grayColor => const MaterialColor(
        0xFF000D0B,
        {
          1: Color(0xFFFFFFFF),
          2: Color(0xFFF5F6FA),
          3: Color(0xFFEBECF0),
          4: Color(0xFFD4D5D9),
          5: Color(0xFFBBBCBF),
          6: Color(0xFF8A8B8C),
          7: Color(0xFF575859),
          8: Color(0xFF414142),
          9: Color(0xFF2A2A2B),
          10: Color(0xFF000D0B),
        },
      );
}

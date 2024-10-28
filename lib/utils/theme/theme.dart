import 'package:rentro_car/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class AppTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static AppTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  static AppTheme getLight() {
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends AppTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = AppColors.primary;
  late Color secondary = AppColors.secondry;
  late Color tertiary = const Color(0xFF6D5FED);
  late Color alternate = const Color(0xFFE0E3E7);
  late Color primaryText = AppColors.textPrimary;
  late Color secondaryText = AppColors.textSecondry;
  // late Color primaryBackground = const Color(0xFFF1F4F8);
  // late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryBackground = AppColors.primaryBackground;
  late Color secondaryBackground = AppColors.secondaryBackground;
  late Color accent1 = const Color(0x4D9489F5);
  late Color accent2 = const Color(0x4E39D2C0);
  late Color accent3 = const Color(0x4D6D5FED);
  late Color accent4 = const Color(0xCCFFFFFF);
  late Color success = const Color(0xFF24A891);
  late Color warning = const Color(0xFFCA6C45);
  late Color error = const Color(0xFFE74852);
  late Color info = const Color(0xFFFFFFFF);
}

abstract class Typography {
  String get primaryFontFamily;
  String get secondryFontFamily;

  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final AppTheme theme;

  String get primaryFontFamily => 'Inter';
  String get secondryFontFamily => 'Poppins';

  String get displayLargeFamily => primaryFontFamily;
  TextStyle get displayLarge => GoogleFonts.getFont(
        primaryFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 40.0,
      );
  String get displayMediumFamily => primaryFontFamily;
  TextStyle get displayMedium => GoogleFonts.getFont(
        primaryFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get displaySmallFamily => primaryFontFamily;
  TextStyle get displaySmall => GoogleFonts.getFont(
        primaryFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 28.0,
      );
  String get headlineLargeFamily => primaryFontFamily;
  TextStyle get headlineLarge => GoogleFonts.getFont(
        primaryFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 28.0,
      );
  String get headlineMediumFamily => primaryFontFamily;
  TextStyle get headlineMedium => GoogleFonts.getFont(
        primaryFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get headlineSmallFamily => primaryFontFamily;
  TextStyle get headlineSmall => GoogleFonts.getFont(
        primaryFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      );
  String get titleLargeFamily => secondryFontFamily;
  TextStyle get titleLarge => GoogleFonts.getFont(
        secondryFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => secondryFontFamily;
  TextStyle get titleMedium => GoogleFonts.getFont(
        secondryFontFamily,
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get titleSmallFamily => secondryFontFamily;
  TextStyle get titleSmall => GoogleFonts.getFont(
        secondryFontFamily,
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => secondryFontFamily;
  TextStyle get labelLarge => GoogleFonts.getFont(
        secondryFontFamily,
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => secondryFontFamily;
  TextStyle get labelMedium => GoogleFonts.getFont(
        secondryFontFamily,
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => secondryFontFamily;
  TextStyle get labelSmall => GoogleFonts.getFont(
        secondryFontFamily,
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => secondryFontFamily;
  TextStyle get bodyLarge => GoogleFonts.getFont(
        secondryFontFamily,
        color: theme.primaryText,
        fontSize: 18.0,
      );
  String get bodyMediumFamily => secondryFontFamily;
  TextStyle get bodyMedium => GoogleFonts.getFont(
        secondryFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodySmallFamily => secondryFontFamily;
  TextStyle get bodySmall => GoogleFonts.getFont(
        secondryFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
}

class DarkModeTheme extends AppTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF9489F5);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFF6D5FED);
  late Color alternate = const Color(0xFF22282F);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF95A1AC);
  late Color primaryBackground = const Color(0xFF1A1F24);
  late Color secondaryBackground = const Color(0xFF101213);
  late Color accent1 = const Color(0x4C9489F5);
  late Color accent2 = const Color(0x4E39D2C0);
  late Color accent3 = const Color(0x4D6D5FED);
  late Color accent4 = const Color(0xB31D2428);
  late Color success = const Color(0xFF24A891);
  late Color warning = const Color(0xFFCA6C45);
  late Color error = const Color(0xFFE74852);
  late Color info = const Color(0xFFFFFFFF);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            );
}

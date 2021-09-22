import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final accentTextTheme =
    ThemeData.light().textTheme.apply(fontFamily: 'BrickDisplayPro');

final ThemeData theme = ThemeData(
  appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
  textTheme: ThemeData.light().textTheme.apply(fontFamily: 'SuisseIntl'),
  primaryTextTheme: GoogleFonts.interTextTheme(),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFFF39369),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF3E0808),
    onSecondary: Color(0xFFFFFFFF),
    background: Color(0xFFFCF6F1),
    onBackground: Color(0xFF3E0808),
    surface: Color(0xFFfff5f0),
  ),
);

class RetroThemes {
  static ColorScheme get colorScheme => const ColorScheme.dark(
        primary: Color(0xFF3D087B),
        primaryVariant: Color(0xFFFF00E4),
        secondary: Color(0xFFF43B86),
        secondaryVariant: Color(0xFFFFE459),
        background: Color(0xFF11052C),
      );

  static Color get scaffoldBackgroundColor => const Color(0xFF11052C);
}

class UpgradeThemes {
  static ColorScheme get colorScheme => const ColorScheme.dark(
        primary: Color(0xFF10BB34),
        onSurface: Color(0xFF10121E),
        surface: Colors.white,
      );

  static Color get scaffoldBackgroundColor => const Color(0xFF11052C);
}

class Radii {
  static const xsValue = 2.0;
  static const xsRadius = Radius.circular(xsValue);
  static const xs = BorderRadius.all(xsRadius);

  static const sValue = 4.0;
  static const sRadius = Radius.circular(sValue);
  static const s = BorderRadius.all(sRadius);

  static const mValue = 8.0;
  static const mRadius = Radius.circular(mValue);
  static const m = BorderRadius.all(mRadius);
}

extension ContextExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  MediaQueryData get mq => mediaQuery;
  ThemeData get theme => Theme.of(this);
}

extension MediaQueryExtension on MediaQueryData {
  double get width => size.width;
  double get w => width;

  double get height => size.height;
  double get h => height;
}

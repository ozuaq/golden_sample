import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final baseThemeData = ThemeData(
  brightness: Brightness.light,
  useMaterial3: false,
);

final appTextTheme = GoogleFonts.notoSansJpTextTheme(baseThemeData.textTheme);

final snackBarTextStyle = GoogleFonts.notoSansJp(
    textStyle: baseThemeData.textTheme.titleMedium?.copyWith(
        color: baseThemeData.brightness == Brightness.light
            ? Colors.white
            : Colors.black));

final appThemeData = baseThemeData.copyWith(
  textTheme: appTextTheme,
  snackBarTheme: baseThemeData.snackBarTheme.copyWith(
    contentTextStyle: snackBarTextStyle,
  ),
);

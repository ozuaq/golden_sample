import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final appThemeData = ThemeData(brightness: Brightness.light).copyWith(
    textTheme: GoogleFonts.notoSansJpTextTheme(
        ThemeData(brightness: Brightness.light).textTheme));

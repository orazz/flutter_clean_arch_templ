import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_templ/config/constants/constants.dart';
import 'package:flutter_clean_arch_templ/config/utils/material_color.dart';

final lightTheme = ThemeData(
  primarySwatch: getMaterialColor(PRIMARY_WATCH),
  primaryColor: getMaterialColor(PRIMARY_WATCH),
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    color: APP_THEME_COLOR,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: ICON_THEME),
    titleTextStyle: TextStyle(color: TITLE_TEXT_STYLE, fontSize: 18),
  ),
);

final darkTheme = ThemeData(
  primarySwatch: getMaterialColor(PRIMARY_WATCH),
  primaryColor: getMaterialColor(PRIMARY_WATCH),
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    color: APP_THEME_COLOR_DARK,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: ICON_THEME_DARK),
    titleTextStyle: TextStyle(color: TITLE_TEXT_STYLE_DARK, fontSize: 18),
  ),
);

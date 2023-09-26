import 'package:flutter/material.dart';
import 'package:clean_arch_templ/config/utils/material_color.dart';

final lightTheme = ThemeData(
  primarySwatch: getMaterialColor(Color(0xFF9FA8DA)),
  primaryColor: getMaterialColor(Color(0xFF9FA8DA)),
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: Color(0XFF6200EE)),
    titleTextStyle: TextStyle(color: Color(0XFF3700B3), fontSize: 18),
  ),
);

final darkTheme = ThemeData(
  primarySwatch: getMaterialColor(Color(0xFF311B92)),
  primaryColor: getMaterialColor(Color(0xFF311B92)),
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    color: Colors.black26,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: Color(0XFF3D5AFE)),
    titleTextStyle: TextStyle(color: Color(0XFF3D5AFE), fontSize: 18),
  ),
);

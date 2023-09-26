import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ThemeEvent {
  const ThemeEvent();
}

class ThemeToggle extends ThemeEvent {
  const ThemeToggle();
}

class ThemeLoad extends ThemeEvent {
  const ThemeLoad();
}

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(ThemeData()) {
    on<ThemeEvent>((event, emit) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      bool isDarkMode = state.brightness == Brightness.dark;

      if (event is ThemeLoad) {
        isDarkMode = (await prefs.getBool('isDarkMode')) ?? true;
        final newTheme = isDarkMode ? ThemeData.dark() : ThemeData.light();
        emit(newTheme);
      } else if (event is ThemeToggle) {
        await prefs.setBool('isDarkMode', !isDarkMode);
        final newTheme = isDarkMode ? ThemeData.light() : ThemeData.dark();
        emit(newTheme);
      }
    });
  }
}

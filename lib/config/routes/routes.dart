import 'package:flutter/material.dart';
import 'package:clean_arch_templ/config/constants/constants.dart';
import 'package:clean_arch_templ/features/home/domain/entities/character.dart';
import 'package:clean_arch_templ/features/home/presentation/pages/character_details/character_details.dart';
import 'package:clean_arch_templ/features/home/presentation/pages/home/home.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case charactersListScreen:
        return _materialRoute(const HomePage());
      case characterDetailsScreen:
        final selectedCharacter = settings.arguments as CharacterEntity;
        return MaterialPageRoute(
            builder: (_) => CharacterDetail(selectedCharacter));
      default:
        return _materialRoute(const HomePage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}

import 'package:flutter_clean_arch_templ/core/resources/data_state.dart';
import 'package:flutter_clean_arch_templ/features/home/domain/entities/character.dart';

abstract class CharacterRepository {
  // API methods
  Future<DataState<CharacterResponse>> getCharacters(int page);

  // Database methods
  Future < List < CharacterEntity >> getSavedCharacters();

  Future < void > saveCharacter(CharacterEntity character);

  Future < void > removeCharacter(CharacterEntity character);
}
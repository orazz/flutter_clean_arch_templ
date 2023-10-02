import 'package:flutter_clean_arch_templ/core/resources/data_state.dart';
import 'package:flutter_clean_arch_templ/core/usecase/usecase.dart';
import 'package:flutter_clean_arch_templ/features/home/domain/entities/character.dart';
import 'package:flutter_clean_arch_templ/features/home/domain/repository/character_repository.dart';

class GetCharacterUseCase implements UseCase<DataState<CharacterResponse>, int>{
  
  final CharacterRepository _characterRepository;

  GetCharacterUseCase(this._characterRepository);
  
  @override
  Future<DataState<CharacterResponse>> call({int? params}) {
    return _characterRepository.getCharacters(params!);
  }
  
}
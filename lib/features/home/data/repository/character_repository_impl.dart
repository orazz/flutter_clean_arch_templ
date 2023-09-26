import 'dart:io';

import 'package:dio/dio.dart';
import 'package:clean_arch_templ/core/resources/data_state.dart';
import 'package:clean_arch_templ/features/home/data/data_source/remote/api_service.dart';
import 'package:clean_arch_templ/features/home/data/models/character.dart';
import 'package:clean_arch_templ/features/home/domain/entities/character.dart';
import 'package:clean_arch_templ/features/home/domain/repository/character_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final NewsApiService _newsApiService;
  // TO-DO: Implement local storage
  // final AppDatabase _appDatabase;
  CharacterRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<CharacterResponse>> getCharacters(int page) async {
    try {
      final httpResponse = await _newsApiService.getCharacters(
        page,
      );
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        final characters = httpResponse.data;
        return DataSuccess(characters);
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<List<CharacterModel>> getSavedCharacters() async {
    return []; 
  }

  @override
  Future<void> removeCharacter(CharacterEntity character) {
    return Future(() =>
        false);
  }

  @override
  Future<void> saveCharacter(CharacterEntity character) {
    return Future(() =>
        false);
  }
}

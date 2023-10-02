import 'package:equatable/equatable.dart';
import 'package:flutter_clean_arch_templ/features/home/domain/entities/character.dart';

enum RemoteCharactersStatus { loading, success, failed }

class RemoteCharactersState extends Equatable {
  final RemoteCharactersStatus status;
  final List<CharacterEntity> characters;
  final bool hasMaxReached;

  const RemoteCharactersState(
      {this.status = RemoteCharactersStatus.loading,
      this.characters = const <CharacterEntity>[],
      this.hasMaxReached = false});

  RemoteCharactersState copyWith(
      {RemoteCharactersStatus? pStatus, List<CharacterEntity>? pCharacters, bool? pHasMaxReached}) {
    return RemoteCharactersState(
        status: pStatus ?? status,
        characters: pCharacters ?? characters,
        hasMaxReached: pHasMaxReached ?? hasMaxReached);
  }

  @override
  List<Object?> get props => [status, characters, hasMaxReached];
}
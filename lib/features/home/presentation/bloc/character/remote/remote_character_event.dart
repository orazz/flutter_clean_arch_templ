import 'package:equatable/equatable.dart';

sealed class RemoteCharactersEvent extends Equatable {
  const RemoteCharactersEvent();

  @override
  List<Object?> get props => [];
}

final class GetCharacters extends RemoteCharactersEvent {
  const GetCharacters();
}

final class RefreshCharacters extends RemoteCharactersEvent {
  const RefreshCharacters();
}
import 'package:floor/floor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class CharacterResponse with _$CharacterResponse {
  const factory CharacterResponse({
    required Info info,
    required List<CharacterEntity> results,
  }) = _CharacterResponse;

  factory CharacterResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseFromJson(json);
}

@freezed
class Info with _$Info {
  const factory Info({
    required int count,
    required int pages,
    required String? next,
    required String? prev,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@freezed
@Entity(tableName: 'character',primaryKeys: ['id'])
abstract class CharacterEntity with _$CharacterEntity {
  const factory CharacterEntity({
    int? id,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
    String? image,
    List<String>? episode,
    String? url,
    DateTime? created,
  }) = _CharacterEntity;

  factory CharacterEntity.fromJson(Map<String, dynamic> map) =>
      _$CharacterEntityFromJson(map);

  factory CharacterEntity.fromEntity(CharacterEntity entity) =>
      CharacterEntity(
        id: entity.id,
        name: entity.name,
        status: entity.status,
        species: entity.species,
        type: entity.type,
        gender: entity.gender,
        image: entity.image,
        episode: entity.episode,
        url: entity.url,
        created: entity.created,
      );
}

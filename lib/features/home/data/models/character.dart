import 'package:floor/floor.dart';
import 'package:clean_arch_templ/features/home/data/models/location.dart';
import 'package:clean_arch_templ/features/home/domain/entities/character.dart';
import 'package:clean_arch_templ/features/home/domain/entities/location.dart';

class CharacterResponse {
  List<CharacterModel> results;
  int pages;

  CharacterResponse({required this.results, required this.pages});

  factory CharacterResponse.fromJson(Map<String, dynamic> json) {
    final results = (json['results'] as List<dynamic>)
        .map((characterData) => CharacterModel.fromJson(characterData))
        .toList();

    return CharacterResponse(results: results, pages: json['info']['pages'] ?? 0);
  }
}

@Entity(tableName: 'character',primaryKeys: ['id'])
class CharacterModel extends CharacterEntity {
  const CharacterModel({
    int? id,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
    String? image,
    LocationEntity? origin,
    LocationEntity? location,
    List<String>? episode,
    String? url,
    DateTime? created,
  }) : super(
          id: id,
          name: name,
          status: status,
          species: species,
          type: type,
          gender: gender,
          image: image,
          origin: origin,
          location: location,
          episode: episode,
          url: url,
          created: created,
        );

  factory CharacterModel.fromJson(Map<String, dynamic> map) {
    return CharacterModel(
      id: map['id'],
      name: map['name'],
      status: map['status'],
      species: map['species'],
      type: map['type'],
      gender: map['gender'],
      image: map['image'],
      origin: LocationModel.fromJson(map['origin']),
      location: LocationModel.fromJson(map['location']),
      episode: List<String>.from(map['episode']),
      url: map['url'],
      created: DateTime.tryParse(map['created']),
    );
  }

  factory CharacterModel.fromEntity(
      CharacterEntity entity) {
    return CharacterModel(
      id: entity.id,
      name: entity.name,
      status: entity.status,
      species: entity.species,
      type: entity.type,
      gender: entity.gender,
      image: entity.image,
      origin: entity.origin,
      location: entity.location,
      episode: entity.episode,
      url: entity.url,
      created: entity.created,
    );
  }
}

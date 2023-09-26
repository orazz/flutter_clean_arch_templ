import 'package:clean_arch_templ/features/home/domain/entities/location.dart';

class LocationModel extends LocationEntity {
  const LocationModel({
    String? name,
    String? url,
  }) : super(
          name: name,
          url: url,
        );

  factory LocationModel.fromJson(Map<String, dynamic> map) {
    return LocationModel(
      name: map['name'],
      url: map['url'],
    );
  }

  factory LocationModel.fromEntity(
      LocationEntity entity) {
    return LocationModel(
      name: entity.name,
      url: entity.url,
    );
  }
}
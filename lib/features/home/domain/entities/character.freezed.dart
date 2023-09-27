// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterResponse _$CharacterResponseFromJson(Map<String, dynamic> json) {
  return _CharacterResponse.fromJson(json);
}

/// @nodoc
mixin _$CharacterResponse {
  Info get info => throw _privateConstructorUsedError;
  List<CharacterEntity> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterResponseCopyWith<CharacterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterResponseCopyWith<$Res> {
  factory $CharacterResponseCopyWith(
          CharacterResponse value, $Res Function(CharacterResponse) then) =
      _$CharacterResponseCopyWithImpl<$Res, CharacterResponse>;
  @useResult
  $Res call({Info info, List<CharacterEntity> results});

  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class _$CharacterResponseCopyWithImpl<$Res, $Val extends CharacterResponse>
    implements $CharacterResponseCopyWith<$Res> {
  _$CharacterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoCopyWith<$Res> get info {
    return $InfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CharacterResponseCopyWith<$Res>
    implements $CharacterResponseCopyWith<$Res> {
  factory _$$_CharacterResponseCopyWith(_$_CharacterResponse value,
          $Res Function(_$_CharacterResponse) then) =
      __$$_CharacterResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Info info, List<CharacterEntity> results});

  @override
  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$_CharacterResponseCopyWithImpl<$Res>
    extends _$CharacterResponseCopyWithImpl<$Res, _$_CharacterResponse>
    implements _$$_CharacterResponseCopyWith<$Res> {
  __$$_CharacterResponseCopyWithImpl(
      _$_CharacterResponse _value, $Res Function(_$_CharacterResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_$_CharacterResponse(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterResponse implements _CharacterResponse {
  const _$_CharacterResponse(
      {required this.info, required final List<CharacterEntity> results})
      : _results = results;

  factory _$_CharacterResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterResponseFromJson(json);

  @override
  final Info info;
  final List<CharacterEntity> _results;
  @override
  List<CharacterEntity> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'CharacterResponse(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterResponse &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterResponseCopyWith<_$_CharacterResponse> get copyWith =>
      __$$_CharacterResponseCopyWithImpl<_$_CharacterResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterResponseToJson(
      this,
    );
  }
}

abstract class _CharacterResponse implements CharacterResponse {
  const factory _CharacterResponse(
      {required final Info info,
      required final List<CharacterEntity> results}) = _$_CharacterResponse;

  factory _CharacterResponse.fromJson(Map<String, dynamic> json) =
      _$_CharacterResponse.fromJson;

  @override
  Info get info;
  @override
  List<CharacterEntity> get results;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterResponseCopyWith<_$_CharacterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
mixin _$Info {
  int get count => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get prev => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoCopyWith<Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res, Info>;
  @useResult
  $Res call({int count, int pages, String? next, String? prev});
}

/// @nodoc
class _$InfoCopyWithImpl<$Res, $Val extends Info>
    implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfoCopyWith<$Res> implements $InfoCopyWith<$Res> {
  factory _$$_InfoCopyWith(_$_Info value, $Res Function(_$_Info) then) =
      __$$_InfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int pages, String? next, String? prev});
}

/// @nodoc
class __$$_InfoCopyWithImpl<$Res> extends _$InfoCopyWithImpl<$Res, _$_Info>
    implements _$$_InfoCopyWith<$Res> {
  __$$_InfoCopyWithImpl(_$_Info _value, $Res Function(_$_Info) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_$_Info(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Info implements _Info {
  const _$_Info(
      {required this.count,
      required this.pages,
      required this.next,
      required this.prev});

  factory _$_Info.fromJson(Map<String, dynamic> json) => _$$_InfoFromJson(json);

  @override
  final int count;
  @override
  final int pages;
  @override
  final String? next;
  @override
  final String? prev;

  @override
  String toString() {
    return 'Info(count: $count, pages: $pages, next: $next, prev: $prev)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Info &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.prev, prev) || other.prev == prev));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, pages, next, prev);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoCopyWith<_$_Info> get copyWith =>
      __$$_InfoCopyWithImpl<_$_Info>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoToJson(
      this,
    );
  }
}

abstract class _Info implements Info {
  const factory _Info(
      {required final int count,
      required final int pages,
      required final String? next,
      required final String? prev}) = _$_Info;

  factory _Info.fromJson(Map<String, dynamic> json) = _$_Info.fromJson;

  @override
  int get count;
  @override
  int get pages;
  @override
  String? get next;
  @override
  String? get prev;
  @override
  @JsonKey(ignore: true)
  _$$_InfoCopyWith<_$_Info> get copyWith => throw _privateConstructorUsedError;
}

CharacterEntity _$CharacterEntityFromJson(Map<String, dynamic> json) {
  return _CharacterEntity.fromJson(json);
}

/// @nodoc
mixin _$CharacterEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get species => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<String>? get episode => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterEntityCopyWith<CharacterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEntityCopyWith<$Res> {
  factory $CharacterEntityCopyWith(
          CharacterEntity value, $Res Function(CharacterEntity) then) =
      _$CharacterEntityCopyWithImpl<$Res, CharacterEntity>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? status,
      String? species,
      String? type,
      String? gender,
      String? image,
      List<String>? episode,
      String? url,
      DateTime? created});
}

/// @nodoc
class _$CharacterEntityCopyWithImpl<$Res, $Val extends CharacterEntity>
    implements $CharacterEntityCopyWith<$Res> {
  _$CharacterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? image = freezed,
    Object? episode = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterEntityCopyWith<$Res>
    implements $CharacterEntityCopyWith<$Res> {
  factory _$$_CharacterEntityCopyWith(
          _$_CharacterEntity value, $Res Function(_$_CharacterEntity) then) =
      __$$_CharacterEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? status,
      String? species,
      String? type,
      String? gender,
      String? image,
      List<String>? episode,
      String? url,
      DateTime? created});
}

/// @nodoc
class __$$_CharacterEntityCopyWithImpl<$Res>
    extends _$CharacterEntityCopyWithImpl<$Res, _$_CharacterEntity>
    implements _$$_CharacterEntityCopyWith<$Res> {
  __$$_CharacterEntityCopyWithImpl(
      _$_CharacterEntity _value, $Res Function(_$_CharacterEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? image = freezed,
    Object? episode = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_$_CharacterEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value._episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterEntity implements _CharacterEntity {
  const _$_CharacterEntity(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.image,
      final List<String>? episode,
      this.url,
      this.created})
      : _episode = episode;

  factory _$_CharacterEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterEntityFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? status;
  @override
  final String? species;
  @override
  final String? type;
  @override
  final String? gender;
  @override
  final String? image;
  final List<String>? _episode;
  @override
  List<String>? get episode {
    final value = _episode;
    if (value == null) return null;
    if (_episode is EqualUnmodifiableListView) return _episode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? url;
  @override
  final DateTime? created;

  @override
  String toString() {
    return 'CharacterEntity(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, image: $image, episode: $episode, url: $url, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._episode, _episode) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      status,
      species,
      type,
      gender,
      image,
      const DeepCollectionEquality().hash(_episode),
      url,
      created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterEntityCopyWith<_$_CharacterEntity> get copyWith =>
      __$$_CharacterEntityCopyWithImpl<_$_CharacterEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterEntityToJson(
      this,
    );
  }
}

abstract class _CharacterEntity implements CharacterEntity {
  const factory _CharacterEntity(
      {final int? id,
      final String? name,
      final String? status,
      final String? species,
      final String? type,
      final String? gender,
      final String? image,
      final List<String>? episode,
      final String? url,
      final DateTime? created}) = _$_CharacterEntity;

  factory _CharacterEntity.fromJson(Map<String, dynamic> json) =
      _$_CharacterEntity.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get status;
  @override
  String? get species;
  @override
  String? get type;
  @override
  String? get gender;
  @override
  String? get image;
  @override
  List<String>? get episode;
  @override
  String? get url;
  @override
  DateTime? get created;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterEntityCopyWith<_$_CharacterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

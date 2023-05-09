// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_score_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirebaseScoreEntity _$FirebaseScoreEntityFromJson(Map<String, dynamic> json) {
  return _FirebaseScoreEntity.fromJson(json);
}

/// @nodoc
mixin _$FirebaseScoreEntity {
  String? get date => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseScoreEntityCopyWith<FirebaseScoreEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseScoreEntityCopyWith<$Res> {
  factory $FirebaseScoreEntityCopyWith(
          FirebaseScoreEntity value, $Res Function(FirebaseScoreEntity) then) =
      _$FirebaseScoreEntityCopyWithImpl<$Res, FirebaseScoreEntity>;
  @useResult
  $Res call({String? date, String? duration, String? result, String? url});
}

/// @nodoc
class _$FirebaseScoreEntityCopyWithImpl<$Res, $Val extends FirebaseScoreEntity>
    implements $FirebaseScoreEntityCopyWith<$Res> {
  _$FirebaseScoreEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? duration = freezed,
    Object? result = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirebaseScoreEntityCopyWith<$Res>
    implements $FirebaseScoreEntityCopyWith<$Res> {
  factory _$$_FirebaseScoreEntityCopyWith(_$_FirebaseScoreEntity value,
          $Res Function(_$_FirebaseScoreEntity) then) =
      __$$_FirebaseScoreEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, String? duration, String? result, String? url});
}

/// @nodoc
class __$$_FirebaseScoreEntityCopyWithImpl<$Res>
    extends _$FirebaseScoreEntityCopyWithImpl<$Res, _$_FirebaseScoreEntity>
    implements _$$_FirebaseScoreEntityCopyWith<$Res> {
  __$$_FirebaseScoreEntityCopyWithImpl(_$_FirebaseScoreEntity _value,
      $Res Function(_$_FirebaseScoreEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? duration = freezed,
    Object? result = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_FirebaseScoreEntity(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_FirebaseScoreEntity implements _FirebaseScoreEntity {
  const _$_FirebaseScoreEntity(
      {this.date, this.duration, this.result, this.url});

  factory _$_FirebaseScoreEntity.fromJson(Map<String, dynamic> json) =>
      _$$_FirebaseScoreEntityFromJson(json);

  @override
  final String? date;
  @override
  final String? duration;
  @override
  final String? result;
  @override
  final String? url;

  @override
  String toString() {
    return 'FirebaseScoreEntity(date: $date, duration: $duration, result: $result, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseScoreEntity &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, duration, result, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirebaseScoreEntityCopyWith<_$_FirebaseScoreEntity> get copyWith =>
      __$$_FirebaseScoreEntityCopyWithImpl<_$_FirebaseScoreEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FirebaseScoreEntityToJson(
      this,
    );
  }
}

abstract class _FirebaseScoreEntity implements FirebaseScoreEntity {
  const factory _FirebaseScoreEntity(
      {final String? date,
      final String? duration,
      final String? result,
      final String? url}) = _$_FirebaseScoreEntity;

  factory _FirebaseScoreEntity.fromJson(Map<String, dynamic> json) =
      _$_FirebaseScoreEntity.fromJson;

  @override
  String? get date;
  @override
  String? get duration;
  @override
  String? get result;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseScoreEntityCopyWith<_$_FirebaseScoreEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

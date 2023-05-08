// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseEntity _$ResponseEntityFromJson(Map<String, dynamic> json) {
  return _ResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$ResponseEntity {
  int? get responseCode => throw _privateConstructorUsedError;
  List<Question>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseEntityCopyWith<ResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseEntityCopyWith<$Res> {
  factory $ResponseEntityCopyWith(
          ResponseEntity value, $Res Function(ResponseEntity) then) =
      _$ResponseEntityCopyWithImpl<$Res, ResponseEntity>;
  @useResult
  $Res call({int? responseCode, List<Question>? results});
}

/// @nodoc
class _$ResponseEntityCopyWithImpl<$Res, $Val extends ResponseEntity>
    implements $ResponseEntityCopyWith<$Res> {
  _$ResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      responseCode: freezed == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseEntityCopyWith<$Res>
    implements $ResponseEntityCopyWith<$Res> {
  factory _$$_ResponseEntityCopyWith(
          _$_ResponseEntity value, $Res Function(_$_ResponseEntity) then) =
      __$$_ResponseEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? responseCode, List<Question>? results});
}

/// @nodoc
class __$$_ResponseEntityCopyWithImpl<$Res>
    extends _$ResponseEntityCopyWithImpl<$Res, _$_ResponseEntity>
    implements _$$_ResponseEntityCopyWith<$Res> {
  __$$_ResponseEntityCopyWithImpl(
      _$_ResponseEntity _value, $Res Function(_$_ResponseEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_ResponseEntity(
      responseCode: freezed == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_ResponseEntity implements _ResponseEntity {
  _$_ResponseEntity({this.responseCode, final List<Question>? results})
      : _results = results;

  factory _$_ResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseEntityFromJson(json);

  @override
  final int? responseCode;
  final List<Question>? _results;
  @override
  List<Question>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseEntity(responseCode: $responseCode, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseEntity &&
            (identical(other.responseCode, responseCode) ||
                other.responseCode == responseCode) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, responseCode, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseEntityCopyWith<_$_ResponseEntity> get copyWith =>
      __$$_ResponseEntityCopyWithImpl<_$_ResponseEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseEntityToJson(
      this,
    );
  }
}

abstract class _ResponseEntity implements ResponseEntity {
  factory _ResponseEntity(
      {final int? responseCode,
      final List<Question>? results}) = _$_ResponseEntity;

  factory _ResponseEntity.fromJson(Map<String, dynamic> json) =
      _$_ResponseEntity.fromJson;

  @override
  int? get responseCode;
  @override
  List<Question>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseEntityCopyWith<_$_ResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

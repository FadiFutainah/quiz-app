// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionResponse _$QuestionResponseFromJson(Map<String, dynamic> json) {
  return _QuestionResponse.fromJson(json);
}

/// @nodoc
mixin _$QuestionResponse {
  int? get responseCode => throw _privateConstructorUsedError;
  List<Question>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionResponseCopyWith<QuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionResponseCopyWith<$Res> {
  factory $QuestionResponseCopyWith(
          QuestionResponse value, $Res Function(QuestionResponse) then) =
      _$QuestionResponseCopyWithImpl<$Res, QuestionResponse>;
  @useResult
  $Res call({int? responseCode, List<Question>? results});
}

/// @nodoc
class _$QuestionResponseCopyWithImpl<$Res, $Val extends QuestionResponse>
    implements $QuestionResponseCopyWith<$Res> {
  _$QuestionResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_QuestionResponseCopyWith<$Res>
    implements $QuestionResponseCopyWith<$Res> {
  factory _$$_QuestionResponseCopyWith(
          _$_QuestionResponse value, $Res Function(_$_QuestionResponse) then) =
      __$$_QuestionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? responseCode, List<Question>? results});
}

/// @nodoc
class __$$_QuestionResponseCopyWithImpl<$Res>
    extends _$QuestionResponseCopyWithImpl<$Res, _$_QuestionResponse>
    implements _$$_QuestionResponseCopyWith<$Res> {
  __$$_QuestionResponseCopyWithImpl(
      _$_QuestionResponse _value, $Res Function(_$_QuestionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_QuestionResponse(
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
class _$_QuestionResponse implements _QuestionResponse {
  const _$_QuestionResponse({this.responseCode, final List<Question>? results})
      : _results = results;

  factory _$_QuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionResponseFromJson(json);

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
    return 'QuestionResponse(responseCode: $responseCode, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionResponse &&
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
  _$$_QuestionResponseCopyWith<_$_QuestionResponse> get copyWith =>
      __$$_QuestionResponseCopyWithImpl<_$_QuestionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionResponseToJson(
      this,
    );
  }
}

abstract class _QuestionResponse implements QuestionResponse {
  const factory _QuestionResponse(
      {final int? responseCode,
      final List<Question>? results}) = _$_QuestionResponse;

  factory _QuestionResponse.fromJson(Map<String, dynamic> json) =
      _$_QuestionResponse.fromJson;

  @override
  int? get responseCode;
  @override
  List<Question>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionResponseCopyWith<_$_QuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

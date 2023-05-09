// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) {
  return _CategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponse {
  List<Category>? get triviaCategories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryResponseCopyWith<CategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseCopyWith<$Res> {
  factory $CategoryResponseCopyWith(
          CategoryResponse value, $Res Function(CategoryResponse) then) =
      _$CategoryResponseCopyWithImpl<$Res, CategoryResponse>;
  @useResult
  $Res call({List<Category>? triviaCategories});
}

/// @nodoc
class _$CategoryResponseCopyWithImpl<$Res, $Val extends CategoryResponse>
    implements $CategoryResponseCopyWith<$Res> {
  _$CategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? triviaCategories = freezed,
  }) {
    return _then(_value.copyWith(
      triviaCategories: freezed == triviaCategories
          ? _value.triviaCategories
          : triviaCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryResponseCopyWith<$Res>
    implements $CategoryResponseCopyWith<$Res> {
  factory _$$_CategoryResponseCopyWith(
          _$_CategoryResponse value, $Res Function(_$_CategoryResponse) then) =
      __$$_CategoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category>? triviaCategories});
}

/// @nodoc
class __$$_CategoryResponseCopyWithImpl<$Res>
    extends _$CategoryResponseCopyWithImpl<$Res, _$_CategoryResponse>
    implements _$$_CategoryResponseCopyWith<$Res> {
  __$$_CategoryResponseCopyWithImpl(
      _$_CategoryResponse _value, $Res Function(_$_CategoryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? triviaCategories = freezed,
  }) {
    return _then(_$_CategoryResponse(
      triviaCategories: freezed == triviaCategories
          ? _value._triviaCategories
          : triviaCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_CategoryResponse implements _CategoryResponse {
  const _$_CategoryResponse({final List<Category>? triviaCategories})
      : _triviaCategories = triviaCategories;

  factory _$_CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryResponseFromJson(json);

  final List<Category>? _triviaCategories;
  @override
  List<Category>? get triviaCategories {
    final value = _triviaCategories;
    if (value == null) return null;
    if (_triviaCategories is EqualUnmodifiableListView)
      return _triviaCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryResponse(triviaCategories: $triviaCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryResponse &&
            const DeepCollectionEquality()
                .equals(other._triviaCategories, _triviaCategories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_triviaCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryResponseCopyWith<_$_CategoryResponse> get copyWith =>
      __$$_CategoryResponseCopyWithImpl<_$_CategoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryResponseToJson(
      this,
    );
  }
}

abstract class _CategoryResponse implements CategoryResponse {
  const factory _CategoryResponse({final List<Category>? triviaCategories}) =
      _$_CategoryResponse;

  factory _CategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_CategoryResponse.fromJson;

  @override
  List<Category>? get triviaCategories;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryResponseCopyWith<_$_CategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

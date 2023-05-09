// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirebaseUser _$FirebaseUserFromJson(Map<String, dynamic> json) {
  return _FirebaseUser.fromJson(json);
}

/// @nodoc
mixin _$FirebaseUser {
  String? get email => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseUserCopyWith<FirebaseUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseUserCopyWith<$Res> {
  factory $FirebaseUserCopyWith(
          FirebaseUser value, $Res Function(FirebaseUser) then) =
      _$FirebaseUserCopyWithImpl<$Res, FirebaseUser>;
  @useResult
  $Res call({String? email, String? role, String? id});
}

/// @nodoc
class _$FirebaseUserCopyWithImpl<$Res, $Val extends FirebaseUser>
    implements $FirebaseUserCopyWith<$Res> {
  _$FirebaseUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? role = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirebaseUserCopyWith<$Res>
    implements $FirebaseUserCopyWith<$Res> {
  factory _$$_FirebaseUserCopyWith(
          _$_FirebaseUser value, $Res Function(_$_FirebaseUser) then) =
      __$$_FirebaseUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? role, String? id});
}

/// @nodoc
class __$$_FirebaseUserCopyWithImpl<$Res>
    extends _$FirebaseUserCopyWithImpl<$Res, _$_FirebaseUser>
    implements _$$_FirebaseUserCopyWith<$Res> {
  __$$_FirebaseUserCopyWithImpl(
      _$_FirebaseUser _value, $Res Function(_$_FirebaseUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? role = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_FirebaseUser(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FirebaseUser implements _FirebaseUser {
  const _$_FirebaseUser({this.email, this.role, this.id});

  factory _$_FirebaseUser.fromJson(Map<String, dynamic> json) =>
      _$$_FirebaseUserFromJson(json);

  @override
  final String? email;
  @override
  final String? role;
  @override
  final String? id;

  @override
  String toString() {
    return 'FirebaseUser(email: $email, role: $role, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseUser &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, role, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirebaseUserCopyWith<_$_FirebaseUser> get copyWith =>
      __$$_FirebaseUserCopyWithImpl<_$_FirebaseUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FirebaseUserToJson(
      this,
    );
  }
}

abstract class _FirebaseUser implements FirebaseUser {
  const factory _FirebaseUser(
      {final String? email,
      final String? role,
      final String? id}) = _$_FirebaseUser;

  factory _FirebaseUser.fromJson(Map<String, dynamic> json) =
      _$_FirebaseUser.fromJson;

  @override
  String? get email;
  @override
  String? get role;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseUserCopyWith<_$_FirebaseUser> get copyWith =>
      throw _privateConstructorUsedError;
}

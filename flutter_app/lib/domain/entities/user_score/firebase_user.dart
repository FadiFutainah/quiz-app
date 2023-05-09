import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_user.freezed.dart';
part 'firebase_user.g.dart';

@freezed
class FirebaseUser with _$FirebaseUser {
  const factory FirebaseUser({
    String? email,
    String? role,
    String? id,
  }) = _FirebaseUser;

  factory FirebaseUser.fromJson(Map<String, dynamic> json) =>
      _$FirebaseUserFromJson(json);
}

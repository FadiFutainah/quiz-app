import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_score_entity.freezed.dart';
part 'firebase_score_entity.g.dart';

@freezed
class FirebaseScoreEntity with _$FirebaseScoreEntity {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory FirebaseScoreEntity({
    String? date,
    String? duration,
    String? result,
    String? url,
  }) = _FirebaseScoreEntity;

  factory FirebaseScoreEntity.fromJson(Map<String, dynamic> json) =>
      _$FirebaseScoreEntityFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const UserEntity._();

  const factory UserEntity({
    required String uid,
    required String name,
    required String email,
    required String phone,
    @JsonKey(name: 'photo_url') required String photoURL,
  }) = _UserEntity;

  // Build the UserEntity from a RawJson
  factory UserEntity.fromJson(Map<String, Object?> json) =>
      _$UserEntityFromJson(json);
}

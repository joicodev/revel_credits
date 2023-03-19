import 'package:revel_credits/src/features/user2/domain/entities/user.dart';

abstract class UserRepository {
  Future<UserEntity> getUser(String userId);
  Future<void> saveUser(UserEntity user);
  Future<void> updateUser(UserEntity user);
}

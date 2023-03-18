import 'package:revel_credits/src/features/user/data/data_sources/local_user_data_source.dart';
import 'package:revel_credits/src/features/user/domain/entities/user.dart';
import 'package:revel_credits/src/features/user/domain/repositories/user_repository.dart';

class LocalUserRepository implements UserRepository {
  final LocalUserDataSource localDataSource;

  LocalUserRepository({required this.localDataSource});

  @override
  Future<UserEntity> getUser(String userId) async {
    try {
      final user = await localDataSource.getUser(userId);
      return user;
    } catch (e) {
      throw Exception('Failed to load user');
    }
  }

  @override
  Future<void> saveUser(UserEntity user) async {
    try {
      await localDataSource.saveUser(user);
    } catch (e) {
      throw Exception('Failed to save user');
    }
  }

  @override
  Future<void> updateUser(UserEntity user) async {
    try {
      await localDataSource.updateUser(user);
    } catch (e) {
      throw Exception('Failed to update user');
    }
  }
}

import 'package:revel_credits/src/features/user/domain/repositories/local_user_datasource_repository.dart';
import 'package:revel_credits/src/features/user/infrastructure/data_sources/local_user_data_source.dart';

class LocalUserRepository implements ILocalDSUserRepository {
  final LocalUserDataSourceImpl _localDataSource = LocalUserDataSourceImpl();

  LocalUserRepository();

  /*@override
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
  }*/
}

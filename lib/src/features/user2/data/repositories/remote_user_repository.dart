import 'package:revel_credits/src/features/user2/data/data_sources/remote_user_data_source.dart';
import 'package:revel_credits/src/features/user2/domain/entities/user.dart';
import 'package:revel_credits/src/features/user2/domain/repositories/user_repository.dart';

class RemoteUserRepository implements UserRepository {
  final RemoteUserDataSource remoteDataSource;

  RemoteUserRepository({required this.remoteDataSource});

  @override
  Future<UserEntity> getUser(String userId) async {
    try {
      final user = await remoteDataSource.getUser(userId);
      return user;
    } catch (e) {
      throw Exception('Failed to load user');
    }
  }

  @override
  Future<void> saveUser(UserEntity user) {
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser(UserEntity user) {
    throw UnimplementedError();
  }
}

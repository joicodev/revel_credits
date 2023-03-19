import 'package:firebase_auth/firebase_auth.dart';
import 'package:revel_credits/src/features/user/infrastructure/data_sources/remote_user_data_source.dart';
import 'package:revel_credits/src/features/user/domain/repositories/remote_user_datasource_repository.dart';
import 'package:revel_credits/src/features/user/domain/repositories/user_repository.dart';

class RemoteUserRepository implements IUserRepository {
  final IRemoteUserRepository remoteDataSource;

  RemoteUserRepository({required this.remoteDataSource});

  /*@override
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
  }*/

  @override
  Future<UserCredential> signInFirebase() {
    // TODO: implement signInFirebase
    throw UnimplementedError();
  }
}

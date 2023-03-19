import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:revel_credits/src/features/user/infrastructure/data_sources/firebase_auth_api.dart';
import 'package:revel_credits/src/features/user/infrastructure/data_sources/remote_user_data_source.dart';
import 'package:revel_credits/src/features/user/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements IUserRepository {
  /*final LocalUserDataSource _localUserDataSource = LocalUserDataSource();*/
  final _firebaseAuthAPI = FirebaseAuthAPI();
  final _remoteUserDataSource = RemoteUserDataSourceImpl();

  UserRepositoryImpl() {
    print("[UserRepositoryImpl] - initialized🔥🔥");
  }

  @override
  Stream<User?> get authStatus => _firebaseAuthAPI.authStatus;

  @override
  Future<UserCredential> signIn() {
    return _firebaseAuthAPI.signIn();
  }

  @override
  logOut() => _firebaseAuthAPI.logOut();

  /*@override
  Future<UserEntity> getUser(String userId) async {
    try {
      // Try to get the user from the local data source first
      final user = await localUserDataSource.getUser(userId);
      return user;
    } catch (e) {
      // If the user is not available locally, get it from the remote data source
      final user = await remoteUserDataSource.getUser(userId);
      // Save the user to the local data source for future use
      await localUserDataSource.saveUser(user);
      return user;
    }
  }

  @override
  Future<void> updateUser(UserEntity user) async {
    // Update the user in the remote data source
    await remoteUserDataSource.updateUser(user);
    // Update the user in the local data source
    await localUserDataSource.updateUser(user);
  }

  @override
  Future<void> saveUser(user) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }*/
}

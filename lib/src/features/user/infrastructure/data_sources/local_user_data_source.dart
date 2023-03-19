import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:revel_credits/src/features/user/domain/entities/user_entity.dart';
import 'package:revel_credits/src/features/user/domain/repositories/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalUserDataSource implements IUserRepository {
  /*@override
  Future<UserEntity> getUser(String userId);
  @override
  Future<void> saveUser(UserEntity user);
  @override
  Future<void> updateUser(UserEntity user);*/
}

class LocalUserDataSourceImpl implements LocalUserDataSource {
  static const String key = 'user';

  //final SharedPreferences sharedPreferences;

  LocalUserDataSourceImpl();

  /*@override
  Future<UserEntity> getUser(String userId) async {
    final jsonString = sharedPreferences.getString(key);
    if (jsonString != null) {
      final userJson = json.decode(jsonString) as Map<String, dynamic>;
      return UserEntity.fromJson(userJson);
    } else {
      throw Exception('User not found');
    }
  }

  @override
  Future<void> saveUser(UserEntity user) async {
    final userJson = (user).toJson();
    final jsonString = json.encode(userJson);
    await sharedPreferences.setString(key, jsonString);
  }

  @override
  Future<void> updateUser(UserEntity user) async {
    await saveUser(user);
  }*/

  @override
  Future<UserCredential> signInFirebase() {
    // TODO: implement signInFirebase
    throw UnimplementedError();
  }
}

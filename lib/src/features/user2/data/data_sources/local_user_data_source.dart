import 'dart:convert';

import 'package:revel_credits/src/features/user2/data/models/user.dart';
import 'package:revel_credits/src/features/user2/domain/entities/user.dart';
import 'package:revel_credits/src/features/user2/domain/repositories/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalUserDataSource implements UserRepository {
  @override
  Future<UserEntity> getUser(String userId);
  @override
  Future<void> saveUser(UserEntity user);
  @override
  Future<void> updateUser(UserEntity user);
}

class LocalUserDataSourceImpl implements LocalUserDataSource {
  static const String key = 'user';

  final SharedPreferences sharedPreferences;

  LocalUserDataSourceImpl({required this.sharedPreferences});

  @override
  Future<UserEntity> getUser(String userId) async {
    final jsonString = sharedPreferences.getString(key);
    if (jsonString != null) {
      final userJson = json.decode(jsonString) as Map<String, dynamic>;
      return UserModel.fromJson(userJson);
    } else {
      throw Exception('User not found');
    }
  }

  @override
  Future<void> saveUser(UserEntity user) async {
    final userJson = (user as UserModel).toJson();
    final jsonString = json.encode(userJson);
    await sharedPreferences.setString(key, jsonString);
  }

  @override
  Future<void> updateUser(UserEntity user) async {
    await saveUser(user);
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:revel_credits/src/features/user2/data/models/user.dart';
import 'package:revel_credits/src/features/user2/domain/entities/user.dart';

abstract class RemoteUserDataSource {
  Future<UserEntity> getUser(String userId);
  Future<UserEntity> updateUser(UserEntity user);
}

class RemoteUserDataSourceImpl implements RemoteUserDataSource {
  static const String baseUrl = 'https://my-api.com';
  static const String endpoint = '/users';

  final http.Client httpClient;

  RemoteUserDataSourceImpl({required this.httpClient});

  @override
  Future<UserEntity> getUser(String userId) async {
    final response =
        await httpClient.get(Uri.parse('$baseUrl$endpoint/$userId'));
    if (response.statusCode == 200) {
      final userJson = json.decode(response.body) as Map<String, dynamic>;
      return UserModel.fromJson(userJson);
    } else {
      throw Exception('Failed to load user');
    }
  }

  @override
  Future<UserEntity> updateUser(UserEntity user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}

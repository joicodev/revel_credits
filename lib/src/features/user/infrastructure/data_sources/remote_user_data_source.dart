import 'package:revel_credits/src/shared/infrastructure/client/dio_client_http.dart';
import 'package:revel_credits/src/features/user/domain/repositories/remote_user_datasource_repository.dart';

class RemoteUserDataSource implements IRemoteDSUserRepository {
  late DioClientHttp _clientHttp;

  RemoteUserDataSource(DioClientHttp client) {
    _clientHttp = client;
    print("[RemoteUserDataSourceImpl] - initialized🔥🔥");
  }

  /*@override
  Future<UserEntity> getUser(String userId) async {
    final response =
        await httpClient.get(Uri.parse('$baseUrl$endpoint/$userId'));
    if (response.statusCode == 200) {
      final userJson = json.decode(response.body) as Map<String, dynamic>;
      return UserEntity.fromJson(userJson);
    } else {
      throw Exception('Failed to load user');
    }
  }

  @override
  Future<UserEntity> updateUser(UserEntity user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }*/
}

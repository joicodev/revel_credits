import 'package:dio/dio.dart';
import 'package:revel_credits/src/common/infraestructure/client/dio_client_http.dart';
import 'package:revel_credits/src/features/user/domain/repositories/remote_user_datasource_repository.dart';

class RemoteUserDataSourceImpl implements IRemoteDSUserRepository {
  final DioClientHttp _clientHttp = DioClientHttp(
    baseUrl: '',
    options: BaseOptions(),
  );

  RemoteUserDataSourceImpl() {
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

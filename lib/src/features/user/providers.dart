import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revel_credits/src/features/user/domain/repositories/user_repository.dart';
import 'package:revel_credits/src/features/user/infrastructure/data_sources/remote_user_data_source.dart';
import 'package:revel_credits/src/features/user/infrastructure/repositories/user_repository.dart';
import 'package:revel_credits/src/shared/infrastructure/client/dio_client_http.dart';

///
/// Infrastructure dependencies
///

/// UserRepositoryProvider
final userRepositoryProvider = Provider<IUserRepository>((ref) {
  final client = DioClientHttp(baseUrl: '', options: BaseOptions());
  final remoteUserDataSource = RemoteUserDataSource(client);
  return UserRepositoryImpl(remoteUserDataSource);
});

// StreamProvider for AuthStatus
final authStatus = StreamProvider.autoDispose<User?>((ref) {
  final userProvider = ref.watch(userRepositoryProvider);
  return userProvider.authStatus;
});

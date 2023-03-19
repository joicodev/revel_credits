import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revel_credits/src/features/user/domain/repositories/user_repository.dart';
import 'package:revel_credits/src/features/user/infrastructure/repositories/user_repository.dart';

///
/// Infrastructure dependencies
///
final userRepositoryProvider = Provider<IUserRepository>((ref) {
  return UserRepositoryImpl();
});

final authStatus = StreamProvider.autoDispose<User?>((ref) {
  final userProvider = ref.watch(userRepositoryProvider);
  return userProvider.authStatus;
});

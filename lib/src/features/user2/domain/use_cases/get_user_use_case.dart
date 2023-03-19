import 'package:revel_credits/src/features/user2/domain/entities/user.dart';
import 'package:revel_credits/src/features/user2/domain/repositories/user_repository.dart';

class GetUserUseCase {
  final UserRepository userRepository;

  GetUserUseCase({required this.userRepository});

  Future<UserEntity> execute(String userId) async {
    return userRepository.getUser(userId);
  }
}

import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revel_credits/src/features/user/domain/entities/user.dart';
import 'package:revel_credits/src/features/user/domain/repositories/user_repository.dart';

part 'user_profile_event.dart';
part 'user_profile_state.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final UserRepository _userRepository;

  UserProfileBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(UserProfileInitial());

  Stream<UserProfileState> mapEventToState(UserProfileEvent event) async* {
    if (event is LoadUserProfile) {
      yield* _mapLoadUserProfileToState(event);
    }
  }

  Stream<UserProfileState> _mapLoadUserProfileToState(
      LoadUserProfile event) async* {
    yield UserProfileLoading();
    try {
      final user = await _userRepository.getUser(event.userId);
      yield UserProfileLoaded(user);
    } catch (error) {
      yield UserProfileError(error.toString());
    }
  }
}

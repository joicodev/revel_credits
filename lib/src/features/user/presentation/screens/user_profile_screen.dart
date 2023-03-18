import 'package:flutter/material.dart';
import 'package:revel_credits/src/features/user/domain/entities/user.dart';
import 'package:revel_credits/src/features/user/domain/use_cases/get_user_use_case.dart';

class UserProfileScreen extends StatefulWidget {
  final String userId;
  final GetUserUseCase getUserUseCase;

  const UserProfileScreen({
    super.key,
    required this.userId,
    required this.getUserUseCase,
  });

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  late Future<UserEntity> _userFuture;

  @override
  void initState() {
    super.initState();
    _userFuture = widget.getUserUseCase.execute(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: FutureBuilder<UserEntity>(
        future: _userFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final user = snapshot.data!;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(user.name), Text(user.email)],
              ),
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text('Failed to load user'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

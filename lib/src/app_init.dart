import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revel_credits/src/features/home/presentation/page/home_page.dart';
import 'package:revel_credits/src/features/user/presentation/pages/auth_page.dart';
import 'package:revel_credits/src/features/user/providers.dart';

class AppInit extends ConsumerWidget {
  const AppInit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('[AppInit] builded');
    return StreamBuilder(
      stream: ref.read(userRepositoryProvider).authStatus,
      builder: (_, AsyncSnapshot snapshot) {
        print('hasData ===> ${snapshot.hasData}');
        print('connectionState ===> ${snapshot.connectionState}');
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasData) {
          print('muestra home page....');
          return const HomePage();
        }

        //OnBoardingWidget

        return const AuthPage();
      },
    );
  }
}

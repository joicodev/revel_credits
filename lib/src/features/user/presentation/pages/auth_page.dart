import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revel_credits/generated/l10n.dart';
import 'package:revel_credits/src/shared/presentation/utils/images.dart';
import 'package:revel_credits/src/shared/presentation/widgets/base_scaffold.dart';
import 'package:revel_credits/src/shared/presentation/widgets/button_app_widget.dart';
import 'package:revel_credits/src/features/user/providers.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseScaffold(
      background: BackgroundParams(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.of(context).welcome,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Image.asset(logoDark),
          ButtonApp(
            buttonText: S.of(context).buttonLoginWithGoogle,
            margin: const EdgeInsets.only(top: 10),
            onPressed: () {
              final userProvider = ref.read(userRepositoryProvider);
              userProvider.signIn();
            },
          ),
        ],
      ),
    );
  }
}

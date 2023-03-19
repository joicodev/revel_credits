import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revel_credits/generated/l10n.dart';
import 'package:revel_credits/src/common/presentation/widgets/base_scaffold.dart';
import 'package:revel_credits/src/common/presentation/widgets/button_app_widget.dart';
import 'package:revel_credits/src/features/user/providers.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseScaffold(
      background: BackgroundParams(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("This is the screen after Introduction"),
          ),
          ButtonApp(
            buttonText: S.of(context).buttonLogout,
            margin: const EdgeInsets.only(top: 10),
            onPressed: () {
              final userProvider = ref.read(userRepositoryProvider);
              userProvider.logOut();
            },
          ),
        ],
      ),
    );
  }
}

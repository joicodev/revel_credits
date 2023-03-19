import 'package:flutter/material.dart';
import 'package:revel_credits/src/common/utils/images.dart';
import 'package:revel_credits/src/common/widgets/base_scaffold.dart';
import 'package:revel_credits/src/common/widgets/button_app_widget.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      background: BackgroundParams(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Image.asset(logoDark),
          const ButtonApp(
            buttonText: 'Login with Gmail',
            margin: EdgeInsets.only(top: 10),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

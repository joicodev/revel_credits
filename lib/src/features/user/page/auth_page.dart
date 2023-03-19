import 'package:flutter/material.dart';
import 'package:revel_credits/src/common/widgets/base_scaffold.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      background: BackgroundParams(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome',
            style: TextStyle(
              fontFamily: 'prueba',
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Welcome',
            style: TextStyle(fontFamily: 'Montserrat'),
          ),
          const Text(
            'Welcome',
            style: TextStyle(fontFamily: 'NotoSans'),
          ),
          Image.asset('assets/logo/logo_dark.png'),
        ],
      ),
    );
  }
}

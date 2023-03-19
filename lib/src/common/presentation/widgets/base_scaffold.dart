import 'package:flutter/material.dart';
import 'package:revel_credits/src/common/presentation/widgets/gradient_background_widget.dart';

class BaseScaffold extends StatelessWidget {
  final BackgroundParams? background;
  final Widget child;
  //final List<Widget>? children;
  final Widget? floatingActionButton;

  const BaseScaffold({
    Key? key,
    //this.children,
    required this.child,
    this.background,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (background != null)
            GradientBackgroundWidget(height: background?.height),
          SafeArea(child: child),
          //...?children
        ],
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}

class BackgroundParams {
  final double? height;
  BackgroundParams({this.height});
}

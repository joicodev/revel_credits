import 'package:flutter/material.dart';
import 'package:revel_credits/src/common/presentation/extensions/padding_extensions.dart';

class ButtonApp extends StatelessWidget {
  final String buttonText;
  final List<Color>? colors;
  final VoidCallback? onPressed;
  final double horizontalPadding;
  final EdgeInsetsGeometry? margin;

  const ButtonApp({
    Key? key,
    this.colors,
    this.margin,
    this.onPressed,
    this.horizontalPadding = 20,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: theme.textTheme.labelLarge,
          foregroundColor: theme.primaryColorDark,
          disabledForegroundColor: Colors.black87.withOpacity(0.38),
          backgroundColor: theme.primaryColor,
          disabledBackgroundColor: theme.disabledColor,
        ),
        onPressed: onPressed,
        child: Text(buttonText),
      ),
    ).horizontalPadding(horizontalPadding);

    /* return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          margin: margin ??
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            gradient: LinearGradient(
              colors: colors ?? [theme.primaryColor, theme.primaryColor],
              begin: const FractionalOffset(0.2, 0.0),
              end: const FractionalOffset(1.0, 0.6),
              stops: const [0.0, 0.6],
              tileMode: TileMode.clamp,
            ),
          ),
          child: Center(
            child: Text(buttonText, style: theme.textTheme.labelLarge),
          ),
        ),
      ),
    ).horizontalPadding(horizontalPadding);*/
  }
}

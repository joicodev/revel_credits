import 'package:flutter/material.dart';

class AppStyle {
  static TextStyle headerTitle({
    double fontSize = 28.0,
    Color color = Colors.white,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle title({Color? color}) {
    return TextStyle(
      fontSize: 17.0,
      color: color ?? Colors.white,
    );
  }

  static TextStyle caption({Color? color}) {
    return TextStyle(
      fontSize: 12.0,
      color: color ?? Colors.white,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle medium({Color? color}) {
    return TextStyle(
      fontSize: 14.0,
      color: color ?? Colors.white,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle large({Color? color}) {
    return TextStyle(
      color: color,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle buttonText({Color? color}) {
    return TextStyle(
      fontSize: 18.0,
      color: color ?? Colors.white,
      fontWeight: FontWeight.bold,
    );
  }
}

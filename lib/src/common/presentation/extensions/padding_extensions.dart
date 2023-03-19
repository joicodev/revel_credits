import 'package:flutter/cupertino.dart';

extension PaddingExtension on Widget {
  Padding horizontalPadding(double value) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: value),
      child: this,
    );
  }
}

import 'package:flutter/material.dart';

class GradientBackgroundWidget extends StatelessWidget {
  /// [height] null is FullScreen
  final double? height;
  const GradientBackgroundWidget({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: height ?? screenHeight,
      decoration: const BoxDecoration(color: Colors.white
          /*gradient: LinearGradient(
          colors: [AppColors.primary, AppColors.primaryDark],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
        ),*/
          ),
      child: FittedBox(
        fit: BoxFit.none,
        alignment: const Alignment(-1.7, 0),
        child: Container(
          height: height ?? screenHeight,
          width: screenHeight,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 0.05),
            borderRadius: BorderRadius.circular(screenHeight / 2),
          ),
        ),
      ),
    );
  }
}

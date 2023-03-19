import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:revel_credits/generated/l10n.dart';
import 'package:revel_credits/src/common/utils/images.dart';
import 'package:revel_credits/src/features/user/presentation/pages/auth_page.dart';

class OnBoardingWidget extends StatefulWidget {
  const OnBoardingWidget({Key? key}) : super(key: key);

  @override
  OnBoardingWidgetState createState() => OnBoardingWidgetState();
}

class OnBoardingWidgetState extends State<OnBoardingWidget> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const AuthPage()),
    );
  }

  Widget _buildFullscreenImage() {
    return SvgPicture.asset(
      onBoardingCar1,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = double.infinity]) {
    return SvgPicture.asset(assetName, width: width);
  }

  //
  List<PageViewModel> pageViewModel() {
    const pageDecoration = PageDecoration(
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
      bodyTextStyle: TextStyle(fontSize: 19.0),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
    );

    return [
      PageViewModel(
        title: S.of(context).onboardingFirstTitle,
        body: S.of(context).onboardingFirst,
        image: _buildImage(onBoardingCar6),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: S.of(context).onboardingSecondTitle,
        body: S.of(context).onboardingSecond,
        image: _buildImage(onBoardingCar3),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: S.of(context).onboardingThirdTitle,
        body: S.of(context).onboardingThird,
        image: _buildImage(onBoardingCredits),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: S.of(context).onboardingFourthTitle,
        body: S.of(context).onboardingFourth,
        decoration: pageDecoration.copyWith(
          bodyFlex: 2,
          imageFlex: 4,
          bodyAlignment: Alignment.bottomCenter,
          imageAlignment: Alignment.topCenter,
        ),
        image: _buildImage(onBoardingAnalytics),
        reverse: true,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: IntroductionScreen(
          key: introKey,
          globalBackgroundColor: Colors.white,
          allowImplicitScrolling: true,
          autoScrollDuration: 3000,
          globalHeader: Align(
            alignment: Alignment.topRight,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => _onIntroEnd(context),
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Icon(Icons.translate_outlined),
                ),
              ),
            ),
          ),
          globalFooter: SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  theme.primaryColor,
                ),
              ),
              child: Text(
                S.of(context).letsGoRightAway,
                style: theme.textTheme.titleSmall,
              ),
              onPressed: () => _onIntroEnd(context),
            ),
          ),
          skipOrBackFlex: 0,
          nextFlex: 0,
          showBackButton: false,
          pages: pageViewModel(),
          //rtl: true, // Display as right-to-left
          back: const Icon(Icons.arrow_back),
          showSkipButton: true,
          skip: Text(S.of(context).skip, style: theme.textTheme.titleSmall),
          next: Icon(Icons.arrow_forward, color: theme.primaryColor),
          showDoneButton: true,
          done: Text(S.of(context).done, style: theme.textTheme.titleSmall),
          onDone: () => _onIntroEnd(context),
          curve: Curves.fastLinearToSlowEaseIn,
          controlsMargin: const EdgeInsets.all(16),
          controlsPadding: kIsWeb
              ? const EdgeInsets.all(12.0)
              : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
          dotsDecorator: const DotsDecorator(
            size: Size(10.0, 10.0),
            //color: Color(0xFFE9415A),
            activeSize: Size(22.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
          ),
          /*dotsContainerDecorator: const ShapeDecoration(
            color: Colors.black87,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
          ),*/
        ),
      ),
    );
  }
}

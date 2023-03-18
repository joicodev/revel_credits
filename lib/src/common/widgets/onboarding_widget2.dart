import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:revel_credits/generated/l10n.dart';

class OnBoardingWidget extends StatefulWidget {
  const OnBoardingWidget({Key? key}) : super(key: key);

  @override
  OnBoardingWidgetState createState() => OnBoardingWidgetState();
}

class OnBoardingWidgetState extends State<OnBoardingWidget> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }

  Widget _buildFullscreenImage() {
    return SvgPicture.asset(
      'assets/onboarding/car1.svg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = double.infinity]) {
    return SvgPicture.asset('assets/onboarding/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: IntroductionScreen(
          key: introKey,
          globalBackgroundColor: Colors.white,
          allowImplicitScrolling: true,
          autoScrollDuration: 3000,
          showDoneButton: false,
          /*globalHeader: Align(
            alignment: Alignment.topRight,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 16, right: 16),
                child: _buildImage('car3.svg', 100),
              ),
            ),
          ),*/
          /*globalFooter: SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              child: const Text(
                'Let\'s go right away!',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              onPressed: () => _onIntroEnd(context),
            ),
          ),*/
          pages: [
            PageViewModel(
              title: S.of(context).onboardingFirstTitle,
              body: S.of(context).onboardingFirst,
              image: _buildImage('car3.svg'),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: S.of(context).onboardingSecondTitle,
              body: S.of(context).onboardingSecond,
              image: _buildImage('car4.svg'),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: S.of(context).onboardingThirdTitle,
              body: S.of(context).onboardingThird,
              image: _buildImage('car5.svg'),
              decoration: pageDecoration,
            ),
            /*PageViewModel(
              title: "Full Screen Page",
              body:
                  "Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
              image: _buildFullscreenImage(),
              decoration: pageDecoration.copyWith(
                contentMargin: const EdgeInsets.symmetric(horizontal: 16),
                fullScreen: true,
                bodyFlex: 2,
                imageFlex: 3,
                safeArea: 100,
              ),
            ),*/
            /*PageViewModel(
              title: "Another title page",
              body: "Another beautiful body text for this example onboarding",
              image: _buildImage('car6.svg'),
              footer: ElevatedButton(
                onPressed: () {
                  introKey.currentState?.animateScroll(0);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  'FooButton',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              decoration: pageDecoration.copyWith(
                bodyFlex: 6,
                imageFlex: 6,
                safeArea: 80,
              ),
            ),*/
            PageViewModel(
              /*bodyWidget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Click on ", style: bodyStyle),
                  Icon(Icons.edit),
                  Text(" to edit a post", style: bodyStyle),
                ],
              ),*/
              title: S.of(context).onboardingFourthTitle,
              body: S.of(context).onboardingFourth,
              decoration: pageDecoration.copyWith(
                bodyFlex: 2,
                imageFlex: 4,
                bodyAlignment: Alignment.bottomCenter,
                imageAlignment: Alignment.topCenter,
              ),
              image: _buildImage('car1.svg'),
              reverse: true,
            ),
          ],
          onDone: () => _onIntroEnd(context),
          //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
          showSkipButton: false,
          skipOrBackFlex: 0,
          nextFlex: 0,
          showBackButton: true,
          //rtl: true, // Display as right-to-left
          back: const Icon(Icons.arrow_back),
          skip:
              const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
          next: const Icon(Icons.arrow_forward),
          done:
              const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
          curve: Curves.fastLinearToSlowEaseIn,
          controlsMargin: const EdgeInsets.all(16),
          controlsPadding: kIsWeb
              ? const EdgeInsets.all(12.0)
              : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
          dotsDecorator: const DotsDecorator(
            size: Size(10.0, 10.0),
            color: Color(0xFFE9415A),
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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}

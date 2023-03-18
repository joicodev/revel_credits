import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:revel_credits/src/common/config/app_styles.dart';
import 'package:revel_credits/src/common/widgets/base_scaffold.dart';
import 'package:revel_credits/src/common/widgets/onboarding_widget.dart';

final counterProvider = StateNotifierProvider((ref) {
  return Counter();
});

class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void increment() => state = state * 2;
}

class AppInit extends ConsumerWidget {
  const AppInit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return const OnBoardingWidget();
    return BaseScaffold(
      //background: BackgroundParams(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
            child: IntroductionScreen(
              showNextButton: false,
              showDoneButton: false,
              controlsPadding: EdgeInsets.zero,
              //onDone: () {},
              //done: const Text("Done"),
              pages: [
                PageViewModel(
                  title: "",
                  body: "",
                  image: Center(
                    child: SvgPicture.asset(
                      "assets/onboarding/car1.svg",
                      height: 800,
                    ),
                  ),
                ),
                PageViewModel(
                  title: "",
                  body: "",
                  image: Center(
                    child: SvgPicture.asset(
                      "assets/onboarding/car2.svg",
                      height: 800,
                    ),
                  ),
                ),
                PageViewModel(
                  title: "",
                  body: "",
                  image: Container(
                    color: Colors.blue,
                    child: SvgPicture.asset("assets/onboarding/car3.svg"),
                  ),
                ),
              ],
            ),
          )
          /*Center(
            child: Text(
              'Welcome\nThis is Kara Trips App ${count.toString()}',
              style: AppStyle.headerTitle(color: Colors.black),
            ),
          ),*/
        ],
      ),
    );
  }
}

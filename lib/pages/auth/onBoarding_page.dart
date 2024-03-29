import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/router.dart';
import 'package:going_home_app/widgets/button/widely_button.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          color: kLightPrimaryColor,
        ),
        child: Stack(
          children: [
            Center(
              child: Image.asset('assets/images/going_home_onboarding.png'),
            ),
            Positioned(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 0,
                    left: 32,
                    right: 32,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      WidelyButton(
                        label: '新しく始める',
                        onPressed: () {
                          context.push(RoutePath.signUp.toStr);
                        },
                        backgroundColor: kDarkGray,
                        textStyle: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: kWhite),
                      ),
                      const SizedBox(height: 8),
                      WidelyButton(
                        label: 'ログイン',
                        onPressed: () {
                          context.go(RoutePath.login.toStr);
                        },
                        primary: kPrimaryColor,
                        backgroundColor: Colors.transparent,
                        borderSide: const BorderSide(color: kDarkGray),
                        textStyle: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: kDarkGray),
                      ),
                      const SizedBox(height: 64),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:my_job/app_styles.dart';
import 'package:page_transition/page_transition.dart';

import '../design_system/text_styles.dart';
import '../size_config.dart';
import 'first_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AnimatedSplashScreen(
      nextScreen: const WelcomeScreen(),
      pageTransitionType: PageTransitionType.fade,
      splashTransition: SplashTransition.fadeTransition,
      splashIconSize: 250,
      splash: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo-umy.png',
              width: 100,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Welcome to',
              style:
                  kPoppinsSemiBold.copyWith(fontSize: kSize28, color: kBlack),
            ),
            Text(
              'My Job',
              style:
                  kPoppinsSemiBold.copyWith(fontSize: kSize28, color: kBlack),
            ),
          ],
        ),
      ),
    );
  }
}

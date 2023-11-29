import 'package:flutter/material.dart';
import 'package:my_job/app_styles.dart';
import 'package:page_transition/page_transition.dart';

import '../design_system/colors.dart';
import '../size_config.dart';
import 'sign_in.dart';
import 'sign_up.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: const Color(0xFF202933),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/bg-welcome.jpg',
            ),
            Container(
              height: SizeConfig.screenHeight,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [
                    Color(0x51202933),
                    Color(0xB4202933),
                    Color(0xFF202933),
                    Color(0xFF202933)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/logo-umy.png',
                      width: 80,
                    ),
                  ),
                  SizedBox(
                    height: kSize16,
                  ),
                  Text(
                    'Work easier with\nMy Job',
                    textAlign: TextAlign.center,
                    style: kPoppinsSemiBold.copyWith(
                        fontSize: kSize32, color: kWhite),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'My job provides convenience in\nyour work process',
                    textAlign: TextAlign.center,
                    style: kNunitoRegular.copyWith(
                        fontSize: kSize16, color: kNeutral20),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kSize20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                              duration: const Duration(milliseconds: 100),
                              child: const SignIn(),
                              type: PageTransitionType.fade,
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        fixedSize: Size(SizeConfig.screenWidth!, 52),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: kPoppinsSemiBold.copyWith(
                            fontSize: kSize16, color: kWhite),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kSize16,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kSize20),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                              duration: const Duration(milliseconds: 100),
                              child: const SignUp(),
                              type: PageTransitionType.fade,
                            ));
                      },
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: const BorderSide(width: 1, color: Colors.white),
                          fixedSize: Size(
                              MediaQuery.of(context).size.width -
                                  (MediaQuery.of(context).size.width * 0.1),
                              52),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: Text(
                        'Register',
                        style: kPoppinsSemiBold.copyWith(
                            fontSize: kSize16, color: kWhite),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kSize24,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

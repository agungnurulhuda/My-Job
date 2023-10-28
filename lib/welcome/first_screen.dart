import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../design_system/colors.dart';
import '../design_system/text_styles.dart';
import 'sign_in.dart';
import 'sign_up.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xFF202933),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                'assets/images/bg-welcome.jpg',
              ),
              Expanded(
                child: Container(
                  height: screenHeight,
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
              ),
              SizedBox(
                height: screenHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/logo-umy.png',
                        width: 80,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    StylesText.heading1SemiBold(
                      'Work easier with',
                      color: Colors.white,
                    ),
                    StylesText.heading1SemiBold(
                      'My Job',
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    StylesText.body1Regular(
                      'My job provides convenience in',
                      color: const Color(0xBBFFFFFF),
                    ),
                    StylesText.body1Regular(
                      'your work process',
                      color: const Color(0xBBFFFFFF),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 50),
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
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins'),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            fixedSize: Size(
                                MediaQuery.of(context).size.width -
                                    (MediaQuery.of(context).size.width * 0.1),
                                52),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16, bottom: 32),
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
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins'),
                        ),
                        style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            side:
                                const BorderSide(width: 1, color: Colors.white),
                            fixedSize: Size(
                                MediaQuery.of(context).size.width -
                                    (MediaQuery.of(context).size.width * 0.1),
                                52),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_job/app_styles.dart';
import 'package:page_transition/page_transition.dart';

import '../design_system/colors.dart';
import '../design_system/text_styles.dart';
import '../home/home.dart';
import '../page_navbar/profile/create_new_password.dart';
import '../size_config.dart';
import 'sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isLockPassword = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.all(20),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 12, 10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 0.50, color: Color(0xFFE8ECF4)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Iconsax.arrow_left_2,
                      size: 18,
                      color: kBlack,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo-umy.png',
                    width: 80,
                  ),
                  SizedBox(
                    height: kSize16,
                  ),
                  Text(
                    'Welcome back!\nto see you, Again',
                    textAlign: TextAlign.center,
                    style: kPoppinsSemiBold.copyWith(
                        fontSize: kSize24, color: kBlack),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: kSize24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kSize20),
              child: Container(
                padding: EdgeInsetsDirectional.all(kSize20),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFECEEF2)),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x087281DF),
                      blurRadius: 4.11,
                      offset: Offset(0, 0.52),
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0x0C7281DF),
                      blurRadius: 6.99,
                      offset: Offset(0, 1.78),
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0x0F7281DF),
                      blurRadius: 10.20,
                      offset: Offset(0, 4.11),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email address',
                      style: kPoppinsMedium.copyWith(
                          fontSize: kSize16, color: kBlack),
                    ),
                    SizedBox(
                      height: kSize12,
                    ),
                    TextField(
                      style: TextStyle(
                        fontSize: kSize16,
                        color: kBlack,
                      ),
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        contentPadding: EdgeInsets.fromLTRB(
                            kSize16, kSize18, kSize16, kSize18),
                        labelText: 'Example@gmail.com',
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        labelStyle: kNunitoRegular.copyWith(
                          fontSize: kSize14,
                          color: const Color(0xFF8391A1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: kSize20,
                    ),
                    Text(
                      'Password',
                      style: kPoppinsMedium.copyWith(
                          fontSize: kSize16, color: kBlack),
                    ),
                    SizedBox(
                      height: kSize12,
                    ),
                    TextField(
                      obscureText: isLockPassword,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        contentPadding: EdgeInsets.fromLTRB(
                            kSize16, kSize18, kSize16, kSize18),
                        labelText: 'Enter your password',
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        labelStyle: kNunitoRegular.copyWith(
                          fontSize: kSize14,
                          color: const Color(0xFF8391A1),
                        ),
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isLockPassword = !isLockPassword;
                              });
                            },
                            child: isLockPassword
                                ? const Icon(Iconsax.eye)
                                : const Icon(Iconsax.eye_slash)),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                        duration:
                                            const Duration(milliseconds: 100),
                                        child: const CreateNewPassword(),
                                        type: PageTransitionType.fade,
                                      ));
                                },
                                child: Text(
                                  'Forgot Password',
                                  style: kNunitoSemiBold.copyWith(
                                      fontSize: kSize14, color: kPrimary),
                                )),
                            const SizedBox(
                              height: 24,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    duration: const Duration(milliseconds: 100),
                                    child: const Home(),
                                    type: PageTransitionType.fade,
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: kPrimary,
                                fixedSize: Size(SizeConfig.screenWidth!, 52),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'Sign in',
                                style: kPoppinsSemiBold.copyWith(
                                    fontSize: kSize16, color: kWhite),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12, bottom: 24),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account?',
                    style: kPoppinsRegular.copyWith(
                        fontSize: kSize14, color: Color(0xFF989898)),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                              duration: const Duration(milliseconds: 100),
                              child: const SignUp(),
                              type: PageTransitionType.fade,
                            ));
                      },
                      child: Text(
                        'Sign Up',
                        style: kNunitoSemiBold.copyWith(
                            fontSize: kSize14, color: kPrimary),
                      ))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

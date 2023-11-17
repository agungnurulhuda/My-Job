import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';

import '../app_styles.dart';
import '../design_system/colors.dart';
import '../design_system/text_styles.dart';
import '../home/home.dart';
import '../size_config.dart';
import 'sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isLockPassword = true;
  bool isLockConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                  child:
                      const Icon(Iconsax.arrow_left_2, size: 18, color: black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kSize20),
              child: Text(
                'Hello! Register to get\nStarted',
                textAlign: TextAlign.start,
                style:
                    kPoppinsSemiBold.copyWith(fontSize: kSize24, color: kBlack),
              ),
            ),
            Container(
              padding: EdgeInsetsDirectional.all(kSize20),
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.50, color: Color(0xFFECEEF2)),
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
                    'Username',
                    style: kPoppinsMedium.copyWith(
                        fontSize: kSize16, color: kBlack),
                  ),
                  const SizedBox(
                    height: 12,
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
                      labelText: 'Enter your email',
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
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
                    'Email address',
                    style: kPoppinsMedium.copyWith(
                        fontSize: kSize16, color: kBlack),
                  ),
                  const SizedBox(
                    height: 12,
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
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
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
                    style: TextStyle(
                      fontSize: kSize16,
                      color: kBlack,
                    ),
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: EdgeInsets.fromLTRB(
                          kSize16, kSize18, kSize16, kSize18),
                      labelText: 'Enter your password',
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
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
                  SizedBox(
                    height: kSize20,
                  ),
                  Text(
                    'Confirm Password',
                    style: kPoppinsMedium.copyWith(
                        fontSize: kSize16, color: kBlack),
                  ),
                  SizedBox(
                    height: kSize12,
                  ),
                  TextField(
                    obscureText: isLockConfirmPassword,
                    style: TextStyle(
                      fontSize: kSize16,
                      color: kBlack,
                    ),
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: EdgeInsets.fromLTRB(
                          kSize16, kSize18, kSize16, kSize18),
                      labelText: 'Confirm password',
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      labelStyle: kNunitoRegular.copyWith(
                        fontSize: kSize14,
                        color: const Color(0xFF8391A1),
                      ),
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isLockConfirmPassword = !isLockConfirmPassword;
                            });
                          },
                          child: isLockConfirmPassword
                              ? const Icon(Iconsax.eye)
                              : const Icon(Iconsax.eye_slash)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 32),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                              duration: const Duration(milliseconds: 100),
                              child: const Home(),
                              type: PageTransitionType.fade,
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        fixedSize: Size(SizeConfig.screenWidth!, 52),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: kPoppinsSemiBold.copyWith(
                            fontSize: kSize16, color: kWhite),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12, bottom: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: kPoppinsRegular.copyWith(
                        fontSize: kSize14, color: Color(0xFF989898)),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                              duration: const Duration(milliseconds: 100),
                              child: const SignIn(),
                              type: PageTransitionType.fade,
                            ));
                      },
                      child: Text(
                        'Sign In',
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

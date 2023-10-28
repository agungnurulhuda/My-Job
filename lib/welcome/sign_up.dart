import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';

import '../design_system/colors.dart';
import '../design_system/text_styles.dart';
import '../home/home.dart';
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
                  child:
                      const Icon(Iconsax.arrow_left_2, size: 18, color: black),
                  padding: const EdgeInsets.fromLTRB(10, 10, 12, 10),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFFE8ECF4)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StylesText.heading2SemiBold('Hello! Register to get',
                      color: black),
                  StylesText.heading2SemiBold('Started', color: black),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsetsDirectional.all(20),
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              width: MediaQuery.of(context).size.width -
                  (MediaQuery.of(context).size.width * 0.1),
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
                  StylesText.heading4Medium('Username ', color: black),
                  const SizedBox(
                    height: 12,
                  ),
                  const TextField(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: EdgeInsets.fromLTRB(16, 18, 16, 18),
                      labelText: 'Enter your email',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      labelStyle:
                          TextStyle(color: Color(0xFF8391A1), fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  StylesText.heading4Medium('Email', color: black),
                  const SizedBox(
                    height: 12,
                  ),
                  const TextField(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: EdgeInsets.fromLTRB(16, 18, 16, 18),
                      labelText: 'Eexample@gmail.com',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      labelStyle:
                          TextStyle(color: Color(0xFF8391A1), fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  StylesText.heading4Medium('Password', color: black),
                  const SizedBox(
                    height: 12,
                  ),
                  TextField(
                    obscureText: isLockPassword,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
                      labelText: 'Enter your password',
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      labelStyle: const TextStyle(
                          color: Color(0xFF8391A1), fontSize: 14),
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
                  const SizedBox(
                    height: 20,
                  ),
                  StylesText.heading4Medium('Confirm password', color: black),
                  const SizedBox(
                    height: 12,
                  ),
                  TextField(
                    obscureText: isLockConfirmPassword,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
                      labelText: 'Confirm password',
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      labelStyle: const TextStyle(
                          color: Color(0xFF8391A1), fontSize: 14),
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
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins'),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            fixedSize: Size(
                                MediaQuery.of(context).size.width -
                                    (MediaQuery.of(context).size.width * 0.1),
                                52),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),
                      )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12, bottom: 24),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StylesText.body2Regular(
                    'Already have an account?',
                    color: const Color(0xFF989898),
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
                      child: StylesText.body2Bold(
                        'Sign In',
                        color: primaryColor,
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

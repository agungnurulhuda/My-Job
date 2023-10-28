import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_job/page_navbar/profile/create_new_password.dart';
import 'package:page_transition/page_transition.dart';

import '../../design_system/colors.dart';
import '../../design_system/text_styles.dart';
import '../../welcome/first_screen.dart';
import 'edit_profile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 40, 20, 24),
            child: StylesText.heading2SemiBold('Profile', color: black),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/profile.png',
                  width: 90,
                ),
                const SizedBox(
                  height: 4,
                ),
                StylesText.heading4SemiBold('Agung NH', color: black),
                const SizedBox(
                  height: 2,
                ),
                StylesText.body3Regular(
                  'agungnurulhuda@gmail.com',
                  color: grey,
                ),
                StylesText.body3Regular(
                  '0896-2279-2400',
                  color: grey,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD3F4FB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: StylesText.body1Medium(
                    'Satpam',
                    color: const Color(0xFF00ADD6),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 48),
                  width: MediaQuery.of(context).size.width -
                      (MediaQuery.of(context).size.width * 0.1),
                  padding: const EdgeInsets.all(24),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFFECEEF2)),
                      borderRadius: BorderRadius.circular(12),
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
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                duration: const Duration(milliseconds: 100),
                                child: const EditProfile(),
                                type: PageTransitionType.fade,
                              ));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Iconsax.edit_2,
                                    size: 20,
                                    color: black2,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  StylesText.body1Medium(
                                    'Edit Profile',
                                    color: black2,
                                  )
                                ],
                              ),
                              const Icon(
                                Iconsax.arrow_right_3,
                                size: 20,
                                color: black2,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        color: Color(0xFFE0E0E0),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                duration: const Duration(milliseconds: 100),
                                child: const CreateNewPassword(),
                                type: PageTransitionType.fade,
                              ));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Iconsax.key,
                                    size: 20,
                                    color: black2,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  StylesText.body1Medium(
                                    'Change Password',
                                    color: black2,
                                  )
                                ],
                              ),
                              const Icon(
                                Iconsax.arrow_right_3,
                                size: 20,
                                color: black2,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.only(top: 24, bottom: 16),
                  child: const Divider(color: Color(0xFFD1D2D4)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width -
                      (MediaQuery.of(context).size.width * 0.1),
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFFD1D2D4)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        PageTransition(
                            child: const WelcomeScreen(),
                            type: PageTransitionType.fade),
                      );
                    },
                    child: Row(
                      children: [
                        const Icon(Iconsax.logout, color: black),
                        const SizedBox(
                          width: 8,
                        ),
                        StylesText.body1Regular('Sign out', color: black)
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ))),
    );
  }
}

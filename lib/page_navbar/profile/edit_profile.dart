import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';

import '../../app_styles.dart';
import '../../design_system/colors.dart';
import '../../design_system/text_styles.dart';
import '../../home/home.dart';
import '../../size_config.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        backgroundColor: Colors.white,
        elevation: 4,
        shadowColor: const Color(0x55C4C4C4),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: const Icon(
            Iconsax.arrow_left_2,
            color: black,
          ),
        ),
        title: StylesText.heading4SemiBold('Edit profile', color: black),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 24,
          ),
          Stack(children: [
            Image.asset(
              'assets/images/profile.png',
              width: 100,
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              padding: const EdgeInsets.fromLTRB(0, 16, 0, 64),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(24),
                                      topRight: Radius.circular(24))),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 32),
                                    height: 6,
                                    width: 88,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFD4D5D7),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Iconsax.gallery5,
                                            color: Color(0xFF2F94FF),
                                            size: 32,
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          StylesText.body1SemiBold('Galery',
                                              color: black)
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 32,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Iconsax.camera5,
                                            color: Color(0xFF2F94FF),
                                            size: 32,
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          StylesText.body1SemiBold('Camera',
                                              color: black)
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: const CircleAvatar(
                        backgroundColor: Color(0xFF006EB8),
                        foregroundColor: Colors.white,
                        radius: 16,
                        child: Icon(
                          Icons.add_a_photo,
                          size: 18,
                        )),
                  ),
                ))
          ]),
          Container(
            padding: const EdgeInsetsDirectional.all(20),
            margin: const EdgeInsets.only(top: 24, left: 20, right: 20),
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
                  style:
                      kPoppinsMedium.copyWith(fontSize: kSize16, color: kBlack),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    contentPadding:
                        EdgeInsets.fromLTRB(kSize16, kSize18, kSize16, kSize18),
                    labelText: 'Enter a new name',
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
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Email',
                  style:
                      kPoppinsMedium.copyWith(fontSize: kSize16, color: kBlack),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    contentPadding:
                        EdgeInsets.fromLTRB(kSize16, kSize18, kSize16, kSize18),
                    labelText: 'Enter a new email',
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
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Number phone',
                  style:
                      kPoppinsMedium.copyWith(fontSize: kSize16, color: kBlack),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    contentPadding:
                        EdgeInsets.fromLTRB(kSize16, kSize18, kSize16, kSize18),
                    labelText: 'Enter a new number',
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
                Container(
                    margin: const EdgeInsets.only(top: 48),
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
                          fixedSize: Size(
                              MediaQuery.of(context).size.width -
                                  (MediaQuery.of(context).size.width * 0.1),
                              52),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                      child: Text(
                        'Change information',
                        style: kPoppinsSemiBold.copyWith(
                            fontSize: kSize14, color: kWhite),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ))),
    );
  }
}

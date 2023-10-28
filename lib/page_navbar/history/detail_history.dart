import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../design_system/colors.dart';
import '../../design_system/text_styles.dart';

class DetailHistory extends StatelessWidget {
  const DetailHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(children: [
            Container(
              foregroundDecoration: const BoxDecoration(color: Color(0x80000000)),
              height: 265,
              child: Image.asset(
                'assets/images/history-images.jpg',
                alignment: Alignment.topCenter,
              ),
            ),
            SafeArea(
              child: Container(
                margin: const EdgeInsets.only(top: 16, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: const Icon(
                          Iconsax.arrow_left_2,
                          color: black,
                          size: 18,
                        ),
                        padding: const EdgeInsets.fromLTRB(10, 10, 12, 10),
                        decoration: ShapeDecoration(
                          color: Colors.white38,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.50, color: Color(0xFFE8ECF4)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Iconsax.location,
                          color: Color(0xFFFDFDFD),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        StylesText.body2Regular(
                          'Jogja, umbulharjo',
                          color: const Color(0xFFFDFDFD),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    StylesText.heading3SemiBold(
                      'First Job Idea Design',
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 8, right: 12),
                          width: 70,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFFF1DF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Row(
                            children: [
                              StylesText.body2Medium(
                                '4.5',
                                color: const Color(0xFFEE8A27),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const Icon(
                                Iconsax.star_15,
                                color: Color(0xFFEE8A27),
                                size: 18,
                              )
                            ],
                          ),
                        ),
                        StylesText.body2Regular(
                          'Pagi',
                          color: const Color(0xFFFDFDFD),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const CircleAvatar(
                          radius: 2.5,
                          backgroundColor: Color(0xFFFDFDFD),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        StylesText.body2Regular(
                          'Kamis, 24 mei 2023',
                          color: const Color(0xFFFDFDFD),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ]),
          Container(
            width: MediaQuery.of(context).size.width -
                (MediaQuery.of(context).size.width * 0.1),
            padding: const EdgeInsets.all(24),
            margin: const EdgeInsets.only(top: 24),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.50, color: Color(0xFFECEEF2)),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StylesText.heading5SemiBold('Description'),
                const SizedBox(
                  height: 8,
                ),
                StylesText.body3Regular(
                  'Create a mobile app UI Kit that provide a basic notes functionality but with some a mobile app UI Kit a mobile app UI Kit a mobile app UI Kitmprovement',
                  color: grey,
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width -
                (MediaQuery.of(context).size.width * 0.1),
            padding: const EdgeInsets.all(24),
            margin: const EdgeInsets.only(top: 24),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.50, color: Color(0xFFECEEF2)),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StylesText.heading5SemiBold('Constrains'),
                const SizedBox(
                  height: 8,
                ),
                StylesText.body3Regular(
                  'Create a mobile app UI Kit that provide a basic notes functionality but with some a mobile app UI Kit a mobile app UI Kit a mobile app UI Kitmprovement',
                  color: grey,
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width -
                (MediaQuery.of(context).size.width * 0.1),
            padding: const EdgeInsets.all(24),
            margin: const EdgeInsets.only(top: 24),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.50, color: Color(0xFFECEEF2)),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StylesText.heading5SemiBold('Notes'),
                const SizedBox(
                  height: 8,
                ),
                StylesText.body3Regular(
                  'Create a mobile app UI Kit that provide a basic notes functionality but with some a mobile app UI Kit a mobile app UI Kit a mobile app UI Kitmprovement',
                  color: grey,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          )
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_job/app_styles.dart';

import '../../design_system/colors.dart';
import '../../design_system/text_styles.dart';
import '../../size_config.dart';

class DetailHistory extends StatelessWidget {
  const DetailHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
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
                  SizedBox(
                    height: kSize32,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Iconsax.location,
                        color: kRed,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Jogja, umbulharjo',
                        style: kNunitoRegular.copyWith(
                            fontSize: kSize14, color: kNeutral90),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'First Job Idea Design',
                    style: kPoppinsSemiBold.copyWith(
                        fontSize: kSize20, color: kBlack),
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '4.5',
                              style: kNunitoMedium.copyWith(
                                  fontSize: kSize14, color: Color(0xFFEE8A27)),
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
                      Text(
                        'Pagi',
                        style: kNunitoRegular.copyWith(
                            fontSize: kSize14, color: kNeutral90),
                      ),
                      SizedBox(
                        width: kSize8,
                      ),
                      const CircleAvatar(
                        radius: 2.5,
                        backgroundColor: kNeutral50,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Text(
                          'Kamis, 24 Oktober 2023',
                          style: kNunitoRegular.copyWith(
                              fontSize: kSize14, color: kNeutral90),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: kSize24,
          ),
          Container(
            width: SizeConfig.screenWidth! * .9,
            padding: EdgeInsets.all(kSize20),
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
                Text(
                  'Description',
                  style: kPoppinsSemiBold.copyWith(
                      fontSize: kSize14, color: kBlack),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Create a mobile app UI Kit that provide a basic notes functionality but with some a mobile app UI Kit a mobile app UI Kit a mobile app UI Kitmprovement',
                  style: kNunitoRegular.copyWith(
                      fontSize: kSize14, color: kNeutral80),
                )
              ],
            ),
          ),
          SizedBox(
            height: kSize24,
          ),
          Container(
            width: SizeConfig.screenWidth! * .9,
            padding: EdgeInsets.all(kSize20),
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
                Text(
                  'Constrains',
                  style: kPoppinsSemiBold.copyWith(
                      fontSize: kSize14, color: kBlack),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Create a mobile app UI Kit that provide a basic notes functionality but with some a mobile app UI Kit a mobile app UI Kit a mobile app UI Kitmprovement',
                  style: kNunitoRegular.copyWith(
                      fontSize: kSize14, color: kNeutral80),
                )
              ],
            ),
          ),
          SizedBox(
            height: kSize24,
          ),
          Container(
            width: SizeConfig.screenWidth! * .9,
            padding: EdgeInsets.all(kSize20),
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
                Text(
                  'Notes',
                  style: kPoppinsSemiBold.copyWith(
                      fontSize: kSize14, color: kBlack),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Create a mobile app UI Kit that provide a basic notes functionality but with some a mobile app UI Kit a mobile app UI Kit a mobile app UI Kitmprovement',
                  style: kNunitoRegular.copyWith(
                      fontSize: kSize14, color: kNeutral80),
                )
              ],
            ),
          ),
          SizedBox(
            height: kSize24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kSize20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: SizeConfig.blockSizeHorizontal! * 50,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/history-images.jpg',
                  fit: BoxFit.cover,
                ),
              ),
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

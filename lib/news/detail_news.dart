import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';

import '../../design_system/colors.dart';
import '../../design_system/text_styles.dart';
import '../../home/home.dart';
import '../app_styles.dart';
import '../size_config.dart';

class DetailNews extends StatefulWidget {
  const DetailNews({Key? key}) : super(key: key);

  @override
  State<DetailNews> createState() => _DetailNewsState();
}

class _DetailNewsState extends State<DetailNews> {
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
        title: StylesText.heading4SemiBold('News', color: black),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/banner-1.png',
                    width: MediaQuery.of(context).size.width,
                    height: SizeConfig.blockSizeHorizontal! * 40,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Agung Nurul Huda',
                      style: kPoppinsMedium.copyWith(
                          fontSize: kSize14, color: kBlack),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Kamis, 29 Oktober 2023',
                      style: kNunitoRegular.copyWith(
                          fontSize: kSize14, color: kNeutral70),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                StylesText.heading5Medium(
                  'WHO classifies triple-mutant Covid variant from India as global health risk',
                  color: black,
                ),
                const SizedBox(
                  height: 8,
                ),
                StylesText.body2Regular(
                  'A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a',
                  color: black2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

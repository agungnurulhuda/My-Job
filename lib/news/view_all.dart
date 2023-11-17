import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_job/app_styles.dart';
import 'package:my_job/news/detail_news.dart';
import 'package:page_transition/page_transition.dart';

import '../../design_system/colors.dart';
import '../../design_system/text_styles.dart';
import '../../home/home.dart';
import '../size_config.dart';

class ViewAllNews extends StatefulWidget {
  const ViewAllNews({Key? key}) : super(key: key);

  @override
  State<ViewAllNews> createState() => _ViewAllNewsState();
}

class _ViewAllNewsState extends State<ViewAllNews> {
  final List news = [
    [
      'Slide 1 info banner  dummy text of the printing Lorem Ipsum',
      'Agung Nurul Huda',
      'baru saja',
      'banner-1.png',
    ],
    [
      'Slide 1 info banner  dummy text of the printing Lorem Ipsum',
      'Agung Nurul Huda',
      '4 menit yang lalu',
      'banner-2.png',
    ],
    [
      'Slide 1 info banner  dummy text of the printing Lorem Ipsum',
      'Agung Nurul Huda',
      'senin, 29 juni 2023',
      'banner-3.png',
    ],
  ];

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
            color: kBlack,
          ),
        ),
        title: Text(
          'News',
          style: kPoppinsMedium.copyWith(fontSize: kSize16, color: kBlack),
        ),
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
              Column(
                  children: news.map((e) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              duration: const Duration(milliseconds: 100),
                              child: const DetailNews(),
                              type: PageTransitionType.fade,
                            ),
                          );
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e[0],
                                    style: kPoppinsMedium.copyWith(
                                        fontSize: kSize14, color: kBlack),
                                  ),
                                  SizedBox(
                                    height: kSize8,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        e[1],
                                        style: kPoppinsMedium.copyWith(
                                            fontSize: kSize12, color: kPrimary),
                                      ),
                                      Text(
                                        e[2],
                                        style: kNunitoRegular.copyWith(
                                            fontSize: kSize12,
                                            color: kNeutral70),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: kSize40,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/${e[3]}',
                                height: 72,
                                width: 72,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: kSize24,
                      )
                    ],
                  ),
                );
              }).toList()),
            ],
          ),
        ),
      ),
    );
  }
}

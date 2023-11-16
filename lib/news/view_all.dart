import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_job/news/detail_news.dart';
import 'package:page_transition/page_transition.dart';

import '../../design_system/colors.dart';
import '../../design_system/text_styles.dart';
import '../../home/home.dart';

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
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  StylesText.heading6Medium(e[0], color: black),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      StylesText.body3Regular(
                                        e[1],
                                        color: primaryColor,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFC4C4C4),
                                        radius: 2,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      StylesText.body3Regular(
                                        e[2],
                                        color: Color(0xFFA0A0A0),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 40,
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
                        height: 16,
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

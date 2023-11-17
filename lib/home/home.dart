import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_job/app_styles.dart';
import 'package:my_job/news/detail_news.dart';
import 'package:my_job/news/view_all.dart';

import 'package:page_transition/page_transition.dart';

import '../design_system/colors.dart';
import '../design_system/text_styles.dart';
import '../page_navbar/create_report.dart';
import '../page_navbar/history/history.dart';
import '../page_navbar/profile/profile.dart';
import '../page_navbar/search.dart';
import '../size_config.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screen = [
    HomePage(),
    const History(),
    // const SearchPage(),
    const Profile()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currenScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
          child: PageStorage(
        child: currenScreen,
        bucket: bucket,
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Iconsax.add,
          size: 32,
        ),
        backgroundColor: primaryColor,
        onPressed: () {
          Navigator.push(
            context,
            PageTransition(
              duration: const Duration(milliseconds: 100),
              child: const CreateReport(),
              type: PageTransitionType.fade,
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: kSize10,
        child: SizedBox(
          height: SizeConfig.blockSizeHorizontal! * 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currenScreen = HomePage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          currentTab == 0 ? Iconsax.home_15 : Iconsax.home,
                          color: currentTab == 0 ? primaryColor : Colors.grey,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Home',
                          style: kNunitoRegular.copyWith(
                            fontSize: kSize14,
                            color: currentTab == 0 ? primaryColor : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currenScreen = const History();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: currentTab == 1
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.center,
                      children: [
                        Icon(
                          currentTab == 1
                              ? Iconsax.archive_tick5
                              : Iconsax.archive_tick,
                          color: currentTab == 1 ? primaryColor : Colors.grey,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'History',
                          style: kNunitoRegular.copyWith(
                            fontSize: kSize14,
                            color: currentTab == 1 ? primaryColor : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              //right bar
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // MaterialButton(
                  //   minWidth: 40,
                  //   onPressed: () {
                  //     setState(() {
                  //       currenScreen = const SearchPage();
                  //       currentTab = 2;
                  //     });
                  //   },
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Icon(
                  //         Iconsax.search_normal,
                  //         color: currentTab == 2 ? primaryColor : Colors.grey,
                  //       ),
                  //       const SizedBox(
                  //         height: 4,
                  //       ),
                  //       StylesText.body2Regular(
                  //         'Search',
                  //         color: currentTab == 2 ? primaryColor : Colors.grey,
                  //       )
                  //     ],
                  //   ),
                  // ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currenScreen = const Profile();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          currentTab == 3
                              ? Iconsax.profile_circle5
                              : Iconsax.profile_circle,
                          size: 26,
                          color: currentTab == 3 ? primaryColor : Colors.grey,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Profil',
                          style: kNunitoRegular.copyWith(
                            fontSize: kSize14,
                            color: currentTab == 3 ? primaryColor : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final List bannerImages = [
    [
      'banner-1.png',
      'Slide 1 info banner  dummy text of the printing Lorem Ipsum asasuasasugasaug'
    ],
    [
      'banner-2.png',
      'Slide 2 info banner  dummy text of the printing Lorem Ipsum'
    ],
    [
      'banner-3.png',
      'Slide 3 info banner  dummy text of the printing Lorem Ipsum'
    ],
  ];

  final List latestJob = [
    [
      'man-1.png',
      '4.0',
      'First job bla bla bla bla bla bla',
      'Create a mobile app UI Kit that provide a basic notes functionality but with so...',
      '1 hours ago'
    ],
    [
      'woman-1.png',
      '4.5',
      'Second job',
      'Create a mobile app UI Kit that provide a basic notes functionality but with so...',
      '1 week ago'
    ],
    [
      'woman-2.png',
      '5.0',
      'Third job',
      'Create a mobile app UI Kit that provide a basic notes functionality but with so...',
      '29-03-2023'
    ],
  ];

  final List bannerNews = [
    [
      'banner-news-1.png',
      'News 1 info banner  dummy text of the printing Lorem Ipsum'
    ],
    [
      'banner-2.png',
      'News 2 info banner  dummy text of the printing Lorem Ipsum'
    ],
    [
      'banner-3.png',
      'News 3 info banner  dummy text of the printing Lorem Ipsum'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 32, 20, 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi Agung 👋',
                      style: kPoppinsSemiBold.copyWith(
                          fontSize: kSize20, color: kBlack),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Welcome to My Job',
                      style: kNunitoMedium.copyWith(
                          fontSize: kSize14, color: kNeutral80),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        color: const Color(0xFFD3F4FB),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                      child: Text(
                        'Satpam',
                        style: kNunitoRegular.copyWith(
                            fontSize: kSize14, color: const Color(0xFF00ADD6)),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/profile.png',
                      width: 56,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 112,
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 12,
                  );
                },
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemCount: bannerImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(children: [
                    SizedBox(
                      width: SizeConfig.screenWidth! * .8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/${bannerImages[index][0]}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0x66000000),
                      ),
                      width: SizeConfig.screenWidth! * .8,
                      height: 112,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          bannerImages[index][1],
                          style: kPoppinsMedium.copyWith(
                              fontSize: kSize16, color: kWhite),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ),
                  ]);
                }),
          ),
          SizedBox(
            height: kSize20,
          ),
          Container(
            height: 8,
            color: const Color(0xFFF3F4F7),
          ),
          SizedBox(
            height: kSize20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kSize20),
            child: Container(
              padding: const EdgeInsets.all(20),
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
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuButton(),
                      MenuButton(),
                      MenuButton(),
                      MenuButton(),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuButton(),
                      MenuButton(),
                      MenuButton(),
                      MenuButton(),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 24, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Latest Job',
                  style: kPoppinsSemiBold.copyWith(
                      fontSize: kSize16, color: kBlack),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFF3F3F3),
                      borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Text(
                        'Sort by',
                        style: kNunitoRegular.copyWith(
                            fontSize: kSize14, color: kBlack),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(
                        Iconsax.setting_4,
                        size: 18,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 125,
            margin: const EdgeInsets.only(top: 16),
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 12,
                );
              },
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: latestJob.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: SizeConfig.screenWidth! * .8,
                  decoration: ShapeDecoration(
                    color: kWhite,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Stack(children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12)),
                              child: Image.asset(
                                'assets/images/${latestJob[index][0]}',
                                height: SizeConfig.blockSizeHorizontal! * 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                width: 70,
                                margin: const EdgeInsets.all(6),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFFFF1DF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      latestJob[index][1],
                                      style: kPoppinsRegular.copyWith(
                                          fontSize: kSize12,
                                          color: Color(0xFFEE8A27)),
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
                            )
                          ])),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              kSize16, kSize12, kSize16, kSize12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                latestJob[index][2],
                                style: kPoppinsSemiBold.copyWith(
                                    fontSize: kSize14, color: kBlack),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: kSize4),
                              Text(
                                latestJob[index][3],
                                style: kNunitoRegular.copyWith(
                                    fontSize: kSize12, color: kNeutral80),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                latestJob[index][4],
                                style: kNunitoRegular.copyWith(
                                    fontSize: kSize12, color: kNeutral70),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 24, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'News',
                  style: kPoppinsSemiBold.copyWith(
                      fontSize: kSize16, color: kBlack),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        duration: const Duration(milliseconds: 100),
                        child: const ViewAllNews(),
                        type: PageTransitionType.fade,
                      ),
                    );
                  },
                  child: Text(
                    'View All',
                    style: kPoppinsRegular.copyWith(
                        fontSize: kSize14, color: kPrimary),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16, bottom: 24),
            child: SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 62,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 12,
                  );
                },
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemCount: bannerImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
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
                    child: SizedBox(
                      width: SizeConfig.screenWidth! * .7,
                      height: SizeConfig.blockSizeHorizontal! * 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: SizeConfig.blockSizeHorizontal! * 35,
                            width: SizeConfig.screenWidth! * .7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                'assets/images/${bannerNews[index][0]}',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            bannerNews[index][1],
                            style: kPoppinsMedium.copyWith(
                                fontSize: kSize16, color: kBlack),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Agung Nurul Huda',
                                style: kPoppinsMedium.copyWith(
                                    fontSize: kSize14, color: kNeutral90),
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
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/images/menu-button.svg',
          width: 54,
        ),
        const SizedBox(
          height: 4,
        ),
        StylesText.heading6Regular('Menu 1', color: black)
      ],
    );
  }
}

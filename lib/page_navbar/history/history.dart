import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_job/app_styles.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_custom_month_picker/flutter_custom_month_picker.dart';

import '../../design_system/colors.dart';
import '../../design_system/text_styles.dart';
import '../../size_config.dart';
import 'detail_history.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  bool isLockPassword = true;
  List cardHistoris = [
    [
      'history-images.jpg',
      'Fisrt job history',
      'Create a mobile app UI Kit that provide a basic notes functionality but with some a mobile app UI Kit a mobile app UI Kit a mobile app UI Kitmprovement...',
      'Kamis, 24 Mei'
    ],
    [
      'banner-1.png',
      'Second job history',
      'Create a mobile app UI Kit that provide a basic notes functionality but with some a mobile app UI Kit a mobile app UI Kit a mobile app UI Kitmprovement...',
      'Selasa, 22 Juni'
    ],
    [
      'banner-2.png',
      'Third job history',
      'Create a mobile app UI Kit that provide a basic notes functionality but with some a mobile app UI Kit a mobile app UI Kit a mobile app UI Kitmprovement...',
      'Selasa, 21 Juni'
    ]
  ];

  int month = DateTime.now().month;
  int year = DateTime.now().year;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: kSize32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: InkWell(
                onTap: () {
                  showMonthPicker(context, onSelected: (month, year) {
                    if (kDebugMode) {
                      print('Selected month: $month, year: $year');
                    }
                    setState(() {
                      this.month = month;
                      this.year = year;
                    });
                  },
                      firstEnabledMonth: 3,
                      lastEnabledMonth: 10,
                      firstYear: 2000,
                      lastYear: 2025,
                      selectButtonText: 'OK',
                      cancelButtonText: 'Cancel',
                      highlightColor: primaryColor,
                      textColor: black,
                      contentBackgroundColor: Colors.white,
                      dialogBackgroundColor: Colors.grey[200]);
                },
                child: Row(
                  children: [
                    const Icon(
                      Iconsax.calendar_1,
                      size: 18,
                      color: Color(0xFF7A8089),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    StylesText.heading4Medium(
                      'Month: $month, $year',
                      color: Color(0xFF7A8089),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Iconsax.arrow_right_3,
                      size: 18,
                      color: Color(0xFF7A8089),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: cardHistoris.map((e) {
                return Container(
                  margin: const EdgeInsets.only(left: 20, top: 16, right: 20),
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
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        child: Image.asset(
                          'assets/images/${e[0]}',
                          alignment: Alignment.topCenter,
                          width: SizeConfig.screenWidth,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: kSize12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e[1],
                              style: kPoppinsSemiBold.copyWith(
                                  fontSize: kSize16, color: kBlack),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: kSize8,
                            ),
                            Text(
                              e[2],
                              style: kNunitoRegular.copyWith(
                                  fontSize: kSize14, color: kNeutral80),
                            ),
                            SizedBox(
                              height: kSize8,
                            ),
                            Text(
                              e[3],
                              style: kNunitoRegular.copyWith(
                                  fontSize: kSize14, color: kNeutral70),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: kSize12,
                      ),
                      const Divider(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                duration: const Duration(milliseconds: 100),
                                child: const DetailHistory(),
                                type: PageTransitionType.fade,
                              ));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                            bottom: 12,
                          ),
                          child: Center(
                            child: Text(
                              'Detail',
                              style: kPoppinsMedium.copyWith(
                                  fontSize: kSize14, color: kBlack),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 48,
            )
          ],
        ),
      )),
    );
  }
}

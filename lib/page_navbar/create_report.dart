import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

import '../design_system/colors.dart';
import '../design_system/text_styles.dart';

class CreateReport extends StatefulWidget {
  const CreateReport({Key? key}) : super(key: key);

  @override
  State<CreateReport> createState() => _CreateReportState();
}

class _CreateReportState extends State<CreateReport> {
  List<String> locations = [
    'Mantrijerona',
    'Kraton',
    'Mergangsan',
    'Umbulharjo',
    'Kotagede',
    'Gondokusuman',
    'Danurejan',
    'Pakualaman',
    'Gondomanan',
    'Ngampilan'
  ];

  List<String> shifts = [
    'Pagi',
    'Siang',
    'Sore',
    'Malam',
  ];

  String formattedDate = DateFormat('EEE d MMM y').format(DateTime.now());
  bool isPickDate = false;
  String? valueShift;
  String? valueLocation;

  DropdownMenuItem<String> buildListLocation(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: black, fontSize: 14),
        ),
      );

  DropdownMenuItem<String> buildListShift(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: black, fontSize: 14),
        ),
      );

  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(200),
            lastDate: DateTime(2025))
        .then((value) {
      setState(() {
        formattedDate = DateFormat('EEE d MMM y').format(value!);
        isPickDate = true;
      });
    });
  }

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
        title: StylesText.heading4SemiBold('Work Report', color: black),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Container(
              margin: const EdgeInsets.fromLTRB(20, 24, 24, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StylesText.heading4Medium('Title', color: black),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        width: MediaQuery.of(context).size.width -
                            (MediaQuery.of(context).size.width * 0.1),
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
                        child: const TextField(
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            contentPadding: EdgeInsets.fromLTRB(16, 14, 16, 14),
                            labelText: 'Example@gmail.com',
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            labelStyle: TextStyle(
                                color: Color(0xFF8391A1), fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 24),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              StylesText.heading4Medium('Location',
                                  color: black),
                              Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 0, 16, 0),
                                  margin: const EdgeInsets.only(top: 8),
                                  width: MediaQuery.of(context).size.width -
                                      (MediaQuery.of(context).size.width * 0.1),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 0.50,
                                          color: Color(0xFFECEEF2)),
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
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      borderRadius: BorderRadius.circular(12),
                                      hint: const Text(
                                        'Location',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: grey, fontSize: 14),
                                      ),
                                      isExpanded: true,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                      iconSize: 32,
                                      icon: const Icon(
                                        Icons.arrow_drop_down_rounded,
                                        color: black2,
                                      ),
                                      value: valueLocation,
                                      items: locations
                                          .map(buildListLocation)
                                          .toList(),
                                      onChanged: (value) => setState(() {
                                        this.valueLocation = value;
                                      }),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              StylesText.heading4Medium('Shift', color: black),
                              Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 0, 16, 0),
                                  margin: const EdgeInsets.only(top: 8),
                                  width: MediaQuery.of(context).size.width -
                                      (MediaQuery.of(context).size.width * 0.1),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 0.50,
                                          color: Color(0xFFECEEF2)),
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
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      borderRadius: BorderRadius.circular(12),
                                      hint: const Text(
                                        'Shift',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: grey, fontSize: 14),
                                      ),
                                      isExpanded: true,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                      iconSize: 32,
                                      icon: const Icon(
                                        Icons.arrow_drop_down_rounded,
                                        color: black2,
                                      ),
                                      value: valueShift,
                                      items:
                                          shifts.map(buildListShift).toList(),
                                      onChanged: (value) => setState(() {
                                        this.valueShift = value;
                                      }),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StylesText.heading4Medium('Date', color: black),
                        Container(
                          padding: EdgeInsets.only(
                              left: 16, top: 10, right: 16, bottom: 10),
                          margin: const EdgeInsets.only(top: 8),
                          width: MediaQuery.of(context).size.width -
                              (MediaQuery.of(context).size.width * 0.1),
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
                          child: InkWell(
                            onTap: () {
                              _showDatePicker();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '$formattedDate',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: isPickDate ? black : grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                                Icon(
                                  Icons.arrow_right_rounded,
                                  color: black2,
                                  size: 32,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StylesText.heading4Medium('Description', color: black),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          height: 108,
                          width: MediaQuery.of(context).size.width -
                              (MediaQuery.of(context).size.width * 0.1),
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
                          child: const TextField(
                            style: TextStyle(
                              fontSize: 16,
                              color: black,
                            ),
                            maxLines: 4,
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              contentPadding:
                                  EdgeInsets.fromLTRB(16, 14, 16, 14),
                              labelText: 'How was yout work today?',
                              alignLabelWithHint: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              labelStyle: TextStyle(
                                  color: Color(0xFF8391A1), fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StylesText.heading4Medium('Constrant', color: black),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          width: MediaQuery.of(context).size.width -
                              (MediaQuery.of(context).size.width * 0.1),
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
                          child: const TextField(
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              contentPadding:
                                  EdgeInsets.fromLTRB(16, 14, 16, 14),
                              labelText: 'Write constrains if any',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              labelStyle: TextStyle(
                                  color: Color(0xFF8391A1), fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 24),
                    child: DottedBorder(
                      color: const Color(0xFFD6E4EC),
                      borderType: BorderType.RRect,
                      dashPattern: const [5],
                      strokeWidth: 1.5,
                      radius: const Radius.circular(8),
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        width: MediaQuery.of(context).size.width -
                            (MediaQuery.of(context).size.width * 0.1),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 16, 0, 64),
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(24),
                                            topRight: Radius.circular(24))),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 32),
                                          height: 6,
                                          width: 88,
                                          decoration: BoxDecoration(
                                              color: const Color(0xFFD4D5D7),
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                                StylesText.body1SemiBold(
                                                    'Galery',
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
                                                StylesText.body1SemiBold(
                                                    'Camera',
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
                          child: Column(children: [
                            const Icon(
                              Icons.image,
                              size: 28,
                              color: Color(0xFF2F94FF),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            StylesText.heading5SemiBold('Upload your image',
                                color: black),
                          ]),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 32),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Make a report',
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
                    ),
                  ),
                ],
              ))),
    );
  }
}

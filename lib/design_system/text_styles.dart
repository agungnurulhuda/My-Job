// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'fonts.dart';

class StylesText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Color color;

///////////////////////////////
////// H E A D I N G - R E G U L A R
///////////////////////////////
  StylesText.heading1Regular(this.text,
      {Key? key, this.color = const Color(0xFF171717)})
      : style = headlineRegular1.copyWith(color: color),
        super(key: key);

  StylesText.heading2Regular(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineRegular2.copyWith(color: color);

  StylesText.heading3Regular(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineRegular3.copyWith(color: color);

  StylesText.heading4Regular(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineRegular4.copyWith(color: color);

  StylesText.heading5Regular(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineRegular5.copyWith(color: color);

  StylesText.heading6Regular(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineRegular6.copyWith(color: color);

///////////////////////////////
////// H E A D I N G - M E D I U M
///////////////////////////////
  StylesText.heading1Medium(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineMedium1.copyWith(color: color);

  StylesText.heading2Medium(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineMedium2.copyWith(color: color);

  StylesText.heading3Medium(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineMedium3.copyWith(color: color);

  StylesText.heading4Medium(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineMedium4.copyWith(color: color);

  StylesText.heading5Medium(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineMedium5.copyWith(color: color);

  StylesText.heading6Medium(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineMedium6.copyWith(color: color);

///////////////////////////////
////// H E A D I N G - S E M I B O L D
///////////////////////////////
  StylesText.heading1SemiBold(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineSemiBold1.copyWith(color: color);

  StylesText.heading2SemiBold(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineSemiBold2.copyWith(color: color);

  StylesText.heading3SemiBold(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineSemiBold3.copyWith(color: color);

  StylesText.heading4SemiBold(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineSemiBold4.copyWith(color: color);

  StylesText.heading5SemiBold(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineSemiBold5.copyWith(color: color);

  StylesText.heading6SemiBold(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineSemiBold6.copyWith(color: color);

///////////////////////////////
////// H E A D I N G - B O L D
///////////////////////////////
  StylesText.heading1Bold(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineBold1.copyWith(color: color);

  StylesText.heading2Bold(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineBold2.copyWith(color: color);

  StylesText.heading3Bold(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineBold3.copyWith(color: color);

  StylesText.heading4Bold(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineBold4.copyWith(color: color);

  StylesText.heading5Bold(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineBold5.copyWith(color: color);

  StylesText.heading6Bold(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = headlineBold6.copyWith(color: color);

///////////////////////////////
////// B O D Y - R E G U L A R
///////////////////////////////
  StylesText.body1Regular(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = bodyRegular1.copyWith(color: color);

  StylesText.body2Regular(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = bodyRegular2.copyWith(color: color);

  StylesText.body3Regular(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = bodyRegular3.copyWith(color: color);

///////////////////////////////
////// B O D Y - M E D I U M
///////////////////////////////
  StylesText.body1Medium(this.text, {key, this.color = const Color(0xFF171717)})
      : style = bodyMedium1.copyWith(color: color);

  StylesText.body2Medium(this.text, {key, this.color = const Color(0xFF171717)})
      : style = bodyMedium2.copyWith(color: color);

  StylesText.body3Medium(this.text, {key, this.color = const Color(0xFF171717)})
      : style = bodyMedium3.copyWith(color: color);

///////////////////////////////
////// B O D Y - S E M I B O L D
///////////////////////////////
  StylesText.body1SemiBold(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = bodySemiBold1.copyWith(color: color);

  StylesText.body2SemiBold(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = bodySemiBold2.copyWith(color: color);

  StylesText.body3SemiBold(this.text,
      {key, this.color = const Color(0xFF171717)})
      : style = bodySemiBold3.copyWith(color: color);

///////////////////////////////
////// B O D Y - S E M I B O L D
///////////////////////////////
  StylesText.body1Bold(this.text, {key, this.color = const Color(0xFF171717)})
      : style = bodyBold1.copyWith(color: color);

  StylesText.body2Bold(this.text, {key, this.color = const Color(0xFF171717)})
      : style = bodyBold2.copyWith(color: color);

  StylesText.body3Bold(this.text, {key, this.color = const Color(0xFF171717)})
      : style = bodyBold3.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}

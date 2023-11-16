import 'package:flutter/material.dart';
import 'package:my_job/home/home.dart';
import 'package:my_job/news/detail_news.dart';
import 'package:my_job/news/view_all.dart';
import 'package:my_job/page_navbar/history/history.dart';
import 'package:my_job/welcome/sign_in.dart';
import 'package:my_job/welcome/splash_screen.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      title: 'My Job',
      home: const SplashScreen(),
    );
  }
}

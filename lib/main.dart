import 'package:course_app_ui/screens/MovieNeon/home_movie_screen.dart';
import 'package:course_app_ui/screens/MovieNeon/on_board_screen.dart';
import 'package:course_app_ui/screens/home_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xff29274F),
        ),
        home: OnboardingScreen());
  }
}

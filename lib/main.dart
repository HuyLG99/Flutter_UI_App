import 'package:course_app_ui/core/doctor_app_theme.dart';
import 'package:course_app_ui/screens/DoctorApp/detail_doctor_screen.dart';
import 'package:course_app_ui/screens/DoctorApp/home_screen_doctor.dart';
import 'package:course_app_ui/screens/FoodRecipe/onboard_food_screen.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreenDoctor(),
        '/doctor_details': (context) => const DoctorDetailScreen(),
      },
    );
  }
}

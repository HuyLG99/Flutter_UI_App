import 'package:course_app_ui/screens/detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHorizontalList extends StatelessWidget {
  const MyHorizontalList({
    Key? key,
    required this.courseHeadline,
    required this.courseTitle,
    required this.courseImage,
    required this.startColor,
    required this.endColor,
  }) : super(key: key);

  final String courseHeadline, courseTitle, courseImage;
  final int startColor, endColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const DetailScreen())),
      child: Padding(
        padding: const EdgeInsets.only(
          right: 26,
        ),
        child: Container(
          width: 246,
          height: 349,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: const Alignment(1, 0.0),
                colors: <Color>[
                  Color(startColor),
                  Color(endColor),
                ]),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 11,
                left: 15,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 39,
                  decoration: BoxDecoration(
                    color: const Color(0xffAFA8EE),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Text(
                    courseHeadline,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 14,
                child: Text(
                  courseTitle,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(
                  courseImage,
                  scale: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

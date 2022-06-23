import 'package:course_app_ui/widgets/my_horizontal_list.dart';
import 'package:course_app_ui/widgets/my_vertical_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 20, right: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Online ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Course Matter',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 349,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const MyHorizontalList(
                      courseHeadline: 'Recomment',
                      courseTitle: 'UX/UI DESIGNER \nBEGINER',
                      courseImage: 'assets/images/Saly-10.png',
                      startColor: 0xff9288E4,
                      endColor: 0xff534EA7,
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Free online class',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'From over 80 Lectures',
                    style: TextStyle(
                      color: Color(0xff9C9A9A),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ]),
            ListView.builder(
                itemCount: 7,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return const MyVerticalList(
                    courseTitle: 'Flutter Developer',
                    courseImage: 'assets/images/Saly-24.png',
                    courseDuration: '8 Hours',
                    courseRating: 4,
                  );
                })
          ],
        ),
      ),
    );
  }
}

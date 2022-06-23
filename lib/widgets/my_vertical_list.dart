import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyVerticalList extends StatelessWidget {
  const MyVerticalList(
      {Key? key,
      required this.courseTitle,
      required this.courseImage,
      required this.courseDuration,
      required this.courseRating})
      : super(key: key);
  final String courseTitle, courseImage, courseDuration;
  final double courseRating;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: SizedBox(
        height: 134,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 92,
              width: MediaQuery.of(context).size.width -
                  MediaQuery.of(context).size.width * 0.13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: const Color(0xff3E3A6D),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                      blurRadius: 14,
                      color: Colors.black.withOpacity(0.25),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 26,
                bottom: 19,
              ),
              child: Row(
                children: [
                  Container(
                    height: 115,
                    width: 115,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(courseImage),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          courseTitle,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          courseDuration,
                          style: const TextStyle(
                            color: Color(0xff9C9A9A),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        RatingBar.builder(
                            initialRating: courseRating,
                            minRating: 1,
                            allowHalfRating: true,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 1),
                            itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: Color(0xffF4C465),
                                ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 34,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.06,
                width: MediaQuery.of(context).size.width * 0.06,
                decoration: const BoxDecoration(
                  color: Color(0xffEB53A2),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow_sharp,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

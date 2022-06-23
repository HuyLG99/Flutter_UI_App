import 'package:course_app_ui/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 392,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(1, 0),
                    colors: <Color>[
                      Color(0xffF4C465),
                      Color(0xffC63956),
                    ]),
                image: DecorationImage(
                  alignment: Alignment.bottomRight,
                  image: AssetImage('assets/images/Saly-36.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 22, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      allowHalfRating: true,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 18,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                      itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Color(0xffF4C465),
                          ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      }),
                  const SizedBox(
                    height: 29,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 116.5,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Ellipse 3.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 22.5,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.pinkAccent,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Ellipse 4.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 45,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.lightGreenAccent,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Ellipse 5.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 67.5,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Ellipse 6.png'),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            '+28K Member',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xffCACACA),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 54,
                          height: 47,
                          decoration: BoxDecoration(
                            color: const Color(0xff353567),
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/like.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return const MyVerticalDetailList();
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

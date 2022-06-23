import 'package:flutter/material.dart';

class MyVerticalDetailList extends StatelessWidget {
  const MyVerticalDetailList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        height: 82,
        decoration: BoxDecoration(
          color: const Color(0xff3E3A6D),
          borderRadius: BorderRadius.circular(19),
        ),
        child: Row(
          children: [
            Container(
              height: 82,
              width: 99,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(19),
                image: const DecorationImage(
                    alignment: Alignment.bottomCenter,
                    image: AssetImage('assets/images/Saly-20.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Introduction Design Graphic',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      const Text(
                        '12 Minutes',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Text(
                            'Free',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

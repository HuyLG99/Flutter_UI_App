import 'package:course_app_ui/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeScreenNavbar extends StatelessWidget {
  const HomeScreenNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: Svg(
                'assets/svg/icon-burger.svg',
                size: Size(
                  24,
                  24,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 36,
          height: 36,
          child: CircleAvatar(
            backgroundColor: Constants.kBlueColor,
            backgroundImage: NetworkImage(
                'https://scontent.fsgn5-15.fna.fbcdn.net/v/t39.30808-6/282653469_1972349972967322_7626154208994099045_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=XUgFFkb6wzgAX_Mrnft&_nc_ht=scontent.fsgn5-15.fna&oh=00_AT-ZV09y-LBu60NGiHCS3BrfFcUoNQhkHyxcm8Wj357A8w&oe=62BF2A55'),
          ),
        )
      ],
    );
  }
}

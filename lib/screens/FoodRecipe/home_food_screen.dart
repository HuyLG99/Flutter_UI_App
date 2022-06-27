import 'package:course_app_ui/components/my_bottom_navigation_bar.dart';
import 'package:course_app_ui/components/pageview_recipe_list.dart';
import 'package:course_app_ui/components/popular_recipt_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeFoodScreen extends StatefulWidget {
  const HomeFoodScreen({Key? key}) : super(key: key);

  @override
  State<HomeFoodScreen> createState() => _HomeFoodScreenState();
}

class _HomeFoodScreenState extends State<HomeFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe7eefb),
      body: SafeArea(
        child: ListView(
          primary: true,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.5,
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recipes',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0E0E2D),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                    child: SvgPicture.asset('assets/svg/icon-nav.svg'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16.53,
            ),
            const PageViewRecipeList(),
            const SizedBox(
              height: 42.52,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: Row(
                children: [
                  SvgPicture.asset('assets/svg/icon-popular.svg'),
                  const SizedBox(
                    width: 4.26,
                  ),
                  const Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffF9AE89),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const PoppularRecipeList(),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}

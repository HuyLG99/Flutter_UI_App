import 'package:course_app_ui/components/doctor/doctor_app_grid_menu.dart';
import 'package:course_app_ui/components/doctor/home_screen_navbar.dart';
import 'package:course_app_ui/components/doctor/top_doctor_list.dart';
import 'package:course_app_ui/core/constant.dart';
import 'package:flutter/material.dart';

class HomeScreenDoctor extends StatelessWidget {
  const HomeScreenDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeScreenNavbar(),
                const SizedBox(
                  height: 30,
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline1,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Find ',
                      ),
                      TextSpan(
                        text: 'your doctor',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                              color: Constants.kGreyColor900,
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 56,
                  padding: const EdgeInsets.only(
                    right: 8,
                    left: 16,
                    bottom: 5,
                    top: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Constants.kGreyColor500,
                  ),
                  child: TextField(
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Constants.kBlackColor900,
                        ),
                    cursorHeight: 24,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Constants.kBlackColor900,
                      ),
                      suffixIconConstraints: const BoxConstraints(
                        maxHeight: 24,
                      ),
                      hintText: 'Search doctor, medicines etc',
                      hintStyle: Theme.of(context).textTheme.headline5,
                      contentPadding: const EdgeInsets.only(bottom: 5),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const DoctorAppGridMenu(),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Doctors',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      'View all',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Constants.kBlueColor,
                          ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const TopDoctorsList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

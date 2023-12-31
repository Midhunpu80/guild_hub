// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:job_socio/main.dart';
import 'package:job_socio/view/screen/cateogeory/cateogoeryscreen.dart';
import 'package:job_socio/view/screen/communityscreen/communityscreen.dart';
import 'package:job_socio/view/screen/home/homescreen.dart';
import 'package:job_socio/view/screen/prouser_profilescreen/pro_userprofilescreen.dart';
import 'package:job_socio/view/utility/colors.dart';

import 'package:sizer/sizer.dart';

class bottomnavscreen extends StatelessWidget {
  dynamic one;
  List pages = [
    homescreen(),
    communityscreen(),
    cateogeoryscreen(),
    homescreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: wh,
          bottomNavigationBar: Stack(
            children: [
              pages[bottomct.index.value],
              Positioned(
                top: 90.h,
                left: 6.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2.h),
                  child: GNav(
                      gap: 8,
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      mainAxisAlignment: MainAxisAlignment.end,
                      curve: Curves.bounceInOut,
                      tabMargin:
                          const EdgeInsets.only(bottom: 6, left: 6, right: 6),
                      tabBackgroundColor: Colors.transparent,
                      onTabChange: (value) {
                        bottomct.changeindex(value);
                        question_controll.getquesions();
                        // getposts_controll.getposts_services();
                      },
                      tabBorderRadius: 12,
                      color: pp,
                      selectedIndex: bottomct.index.value,
                      backgroundColor: gy.withOpacity(0.3),
                      tabs: const [
                        GButton(icon: Icons.home),
                        GButton(icon: Icons.people_outline_rounded),
                        GButton(icon: Icons.category_rounded),
                        GButton(icon: Icons.person_2_outlined),
                      ]),
                ),
              ),
            ],
          ),
        ));
  }
}

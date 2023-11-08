// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:job_socio/main.dart';
import 'package:job_socio/view/screen/communityscreen/communityscreen.dart';
import 'package:job_socio/view/screen/home/homescreen.dart';

import 'package:sizer/sizer.dart';

class bottomnavscreen extends StatelessWidget {
  dynamic pages = [
    const homescreen(),
    const homescreen(),
    const homescreen(),
    communityscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: Colors.transparent,
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
                      },
                      tabBorderRadius: 12,
                      color: Colors.brown,
                      selectedIndex: bottomct.index.value,
                      backgroundColor: Colors.blue,
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

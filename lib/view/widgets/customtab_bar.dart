import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_socio/main.dart';
import 'package:job_socio/view/utility/alltext.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:sizer/sizer.dart';

List<IconData> nes = [
  Icons.ac_unit_rounded,
  Icons.access_alarms,
  Icons.abc_outlined
];

Widget customtabbar() {
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          height: 2.h,
        ),
        SizedBox(
          height: 14.h,
          width: 100.w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {
                          procontroll.changethewidget(index: 0);

                          print("now id one ");
                        },
                        icon: Icon(
                          Icons.grid_4x4_rounded,
                          size: 3.h,
                        )),
                    IconButton(
                        onPressed: () {
                          procontroll.changethewidget(index: 1);
                          print("now is teo");
                        },
                        icon: Icon(
                          Icons.save_outlined,
                          size: 3.h,
                        )),
                    IconButton(
                        onPressed: () {
                          procontroll.changethewidget(index: 2);
                          print("now is theee");
                        },
                        icon: Icon(
                          Icons.reviews,
                          size: 3.h,
                        ))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      alltext(
                          txt: "posts",
                          col: bl,
                          siz: 11.sp,
                          wei: FontWeight.bold,
                          max: 1),
                      alltext(
                          txt: "saved",
                          col: bl,
                          siz: 11.sp,
                          wei: FontWeight.bold,
                          max: 1),
                      alltext(
                          txt: "Reviews",
                          col: bl,
                          siz: 11.sp,
                          wei: FontWeight.bold,
                          max: 1),
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget posts(Color col) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: 40.h,
      width: 100.w,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
          itemBuilder: (context, index) {
            return Container(
              height: 40.h,
              width: 100.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.h), color: col),
            );
          }),
    ),
  );
}

Widget savesposts() {
  return posts(re);
}

Widget reviews() {
  return Container(
    height: 40.h,
    width: 100.w,
    color: yl,
  );
}

import 'package:flutter/material.dart';
import 'package:job_socio/view/utility/alltext.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:sizer/sizer.dart';

Widget requirebar() {
  return Container(
    height: 15.h,
    width: 100.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
    ),
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 9.h,
                    width: 19.w,
                    decoration: BoxDecoration(
                        color: yl,
                        borderRadius: BorderRadius.circular(10.h),
                        border: Border.all(width: 1, color: bl)),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    child: alltext(
                        txt: "Requirements",
                        col: bl,
                        siz: 8.sp,
                        wei: FontWeight.bold,
                        max: 1),
                  )
                ],
              ));
        },
        separatorBuilder: (context, index) {
          return SizedBox();
        },
        itemCount: 5),
  );
}

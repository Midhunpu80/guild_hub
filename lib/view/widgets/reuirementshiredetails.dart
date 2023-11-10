import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_socio/view/screen/hirescreen/hirescreen.dart';
import 'package:job_socio/view/utility/alltext.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:sizer/sizer.dart';

reuirement_hire_details(BuildContext context) {
  return showBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Container(
            height: 55.h,
            width: 100.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(3.h),
                  topRight: Radius.circular(3.h),
                ),
                color: pp.withOpacity(0.3)),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 1.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.h), color: wh),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        height: 10.h,
                        width: 90.w,
                        child: alltext(
                            txt:
                                "Need A Experianced Architechtural Home Designer Near Vembayam trivandram",
                            col: bl,
                            siz: 15.sp,
                            wei: FontWeight.bold,
                            max: 3)),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  TextButton.icon(
                      onPressed: null,
                      icon: Icon(
                        Icons.attach_money_sharp,
                        color: bl,
                      ),
                      label: alltext(
                          txt: "Budget:80000",
                          col: bl,
                          siz: 11.sp,
                          wei: FontWeight.w500,
                          max: 3)),
                  TextButton.icon(
                      onPressed: null,
                      icon: Icon(
                        Icons.location_on_outlined,
                        color: bl,
                      ),
                      label: alltext(
                          txt: "Location:Thrissur,Kerala,India",
                          col: bl,
                          siz: 11.sp,
                          wei: FontWeight.w500,
                          max: 3)),
                  TextButton.icon(
                      onPressed: null,
                      icon: Icon(
                        Icons.person,
                        color: bl,
                      ),
                      label: alltext(
                          txt: "Posted By :Midhun pu",
                          col: bl,
                          siz: 11.sp,
                          wei: FontWeight.w500,
                          max: 3)),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h, top: 5.h),
                    child: InkWell(
                      onTap: () {
                        Get.to(hirescreen());
                      },
                      child: Container(
                        height: 7.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.h),
                            color: pp),
                        child: Center(
                          child: TextButton.icon(
                              onPressed: () {
                                Get.to(hirescreen());
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: re,
                              ),
                              label: alltext(
                                  txt: "2 Proffesionals intrests",
                                  col: wh,
                                  siz: 12.sp,
                                  wei: FontWeight.w600,
                                  max: 3)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}

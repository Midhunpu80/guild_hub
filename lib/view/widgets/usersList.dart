import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_socio/view/screen/messegescreen/messegeview_screen.dart';
import 'package:job_socio/view/utility/alltext.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:sizer/sizer.dart';

Widget allusersList() {
  return Container(
    height: 80.h,
    width: 100.w,
    child: ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            height: 10.h,
            width: 100.w,
            child: ListTile(
              onTap: () {
                Get.to(() => messegeview_screen());
              },
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: bl,
              ),
              leading: CircleAvatar(
                backgroundColor: blu,
                radius: 3.h,
              ),
              title: alltext(
                  txt: "midhun pu",
                  col: bl,
                  siz: 10.sp,
                  wei: FontWeight.w400,
                  max: 1),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: 25),
  );
}

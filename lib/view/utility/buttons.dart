import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_socio/view/screen/messegescreen/messegescreen.dart';
import 'package:job_socio/view/screen/notificationscreen/notificationscreen.dart';
import 'package:job_socio/view/screen/prouser_profilescreen/pro_userprofilescreen.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:sizer/sizer.dart';

Widget messegebutton() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
      backgroundColor: gy.withOpacity(0.3),
      child: IconButton(
          onPressed: () {
            Get.to(() => messegeScreen());
          },
          icon: Icon(
            Icons.message,
            color: bl,
            size: 2.h,
          )),
    ),
  );
}

Widget notificationbutton() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
      radius: 2.h,
      backgroundColor: gy.withOpacity(0.3),
      child: IconButton(
          onPressed: () {
            Get.to(() => notificationscreen());
          },
          icon: Icon(
            Icons.notifications_active,
            color: bl,
            size: 2.h,
          )),
    ),
  );
}
Widget settingsbutton() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
      radius: 2.h,
      backgroundColor: gy.withOpacity(0.3),
      child: IconButton(
          onPressed: () {
            Get.to(() =>pro_userprofilescreen());
          },
          icon: Icon(
            Icons.settings,
            color: bl,
            size: 2.h,
          )),
    ),
  );
}


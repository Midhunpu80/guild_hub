import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_socio/view/screen/messegescreen/messegescreen.dart';
import 'package:job_socio/view/utility/alltext.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:job_socio/view/widgets/userpost.dart';
import 'package:sizer/sizer.dart';

Widget drawwer() {
  return Container(
    height: 8.h,
    width: 100.w,
    color: wh.withOpacity(0.8),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          alltext(
              txt: "Guild Hub",
              col: bl,
              siz: 17.sp,
              wei: FontWeight.bold,
              max: 1),
          // CircleAvatar(
          //   backgroundColor: bl,
          //   radius: 3.h,
          // ),
          const Spacer(),
          Padding(
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 2.h,
              backgroundColor: gy.withOpacity(0.3),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_active,
                    color: bl,
                    size: 2.h,
                  )),
            ),
          )
        ],
      ),
    ),
  );
}

Widget userpostdatasList(BuildContext context) {
  return Container(
      height: 80.h,
      width: 100.w,
      //   color: gy.withOpacity(0.3),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return userpostimage(context);
          },
          separatorBuilder: (context, index) {
            return SizedBox();
          },
          itemCount: 15));
}

Widget posthead() {
  return Container(
      height: 8.h,
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(1.h), topRight: Radius.circular(1.h)),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: bl,
        ),
        title: alltext(
            txt: "midhun pu",
            col: bl,
            siz: 12.sp,
            wei: FontWeight.w600,
            max: 1),
        subtitle: alltext(
            txt: "contractor",
            col: bl,
            siz: 8.sp,
            wei: FontWeight.w400,
            max: 1),
        trailing: Icon(
          Icons.more_vert_outlined,
          color: bl,
        ),
      ));
}

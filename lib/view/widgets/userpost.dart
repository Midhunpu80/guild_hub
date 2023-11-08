

import 'package:flutter/material.dart';
import 'package:job_socio/view/utility/alltext.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:job_socio/view/widgets/comments.dart';
import 'package:job_socio/view/widgets/drawer.dart';
import 'package:sizer/sizer.dart';

Widget userpostimage(BuildContext context) {
  return Card(
    child: Container(
      height: 61.h,
      decoration: BoxDecoration(color: wh, boxShadow: [
        BoxShadow(
            offset: Offset.zero,
            blurRadius: 5.5,
            spreadRadius: 5,
            color: gy.withOpacity(0.3))
      ]),
      child: Column(
        children: [
          posthead(),
          Container(
            height: 35.h,
            width: 100.w,
            color: yl,
          ),
          like_and_commentbar(context),
          descriptionbar(),
        ],
      ),
    ),
  );
}

like_and_commentbar(BuildContext context) {
  return Container(
    height: 7.h,
    color: wh,
    width: 100.w,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Row(
            children: [
              CircleAvatar(
                  radius: 19,
                  backgroundColor: gy.withOpacity(0.3),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_outline,
                        size: 2.h,
                        color: bl,
                      ))),
              SizedBox(
                width: 2.w,
              ),
              alltext(
                  txt: "20", col: bl, siz: 9.sp, wei: FontWeight.bold, max: 1)
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Row(
            children: [
              CircleAvatar(
                  radius: 19,
                  backgroundColor: gy.withOpacity(0.3),
                  child: IconButton(
                      onPressed: () {
                        comments(context: context);
                      },
                      icon: Icon(
                        Icons.messenger_outline_outlined,
                        size: 2.h,
                        color: bl,
                      ))),
              SizedBox(
                width: 2.w,
              ),
              alltext(
                  txt: "20", col: bl, siz: 9.sp, wei: FontWeight.bold, max: 1)
            ],
          ),
          Spacer(),
          CircleAvatar(
              radius: 19,
              backgroundColor: gy.withOpacity(0.3),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark,
                    color: bl,
                    size: 2.h,
                  ))),
        ],
      ),
    ),
  );
}

Widget descriptionbar() {
  return Container(
    height: 10.h,
    width: 100.w,
    //  decoration: BoxDecoration(),
    child: alltext(
        txt: "container" * 290,
        col: bl,
        siz: 8.sp,
        wei: FontWeight.w400,
        max: 8),
  );
}

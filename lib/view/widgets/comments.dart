import 'package:flutter/material.dart';
import 'package:job_socio/view/utility/alltext.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:sizer/sizer.dart';

comments({required BuildContext context}) {
  return showBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Container(
            height: 95.h,
            width: 100.w,
        
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    height: 1.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.h), color: wh),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  SizedBox(
                    child: alltext(
                        txt: "comments",
                        col: bl,
                        siz: 10.sp,
                        wei: FontWeight.w500,
                        max: 1),
                  ),
                  Divider(),
                  showcommentsList(),
                  sendcomment()
                ],
              ),
            ),
          ),
        );
      });
}

sendcomment() {
  return Container(
    height: 10.h,
    width: 100.w,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Row(
          children: [
            CircleAvatar(),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 5.h,
              width: 68.w,
              child: TextFormField(
                decoration: InputDecoration(),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send,
                  color: wh,
                ))
          ],
        ),
      ),
    ),
  );
}

showcommentsList() {
  return Container(
    height: 65.h,
    width: 100.w,
    color: wh,
    child: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 2.h,
            ),
            title: alltext(
                txt: "now bigger ",
                col: bl,
                siz: 9.sp,
                wei: FontWeight.w600,
                max: 1),
            subtitle: alltext(
                txt:
                    "now bigger the can i do some more better i do m y live slife can go them try make all of them in the past way innot  " *
                        200,
                col: bl,
                siz: 7.sp,
                wei: FontWeight.w500,
                max: 9),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox();
        },
        itemCount: 5),
  );
}

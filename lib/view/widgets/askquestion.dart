import 'package:flutter/material.dart';
import 'package:job_socio/view/utility/alltext.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

askquestionsheet(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: wh,
          content: Container(
            color: wh,
            height: 40.h,
            width: 90.w,
            child: Card(
                color: wh,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 15.h,
                              width: 28.w,
                              child: Center(
                                  child: alltext(
                                      txt: "Write your\nThoughts",
                                      col: bl,
                                      siz: 15.sp,
                                      wei: FontWeight.bold,
                                      max: 2))),
                          Container(
                            height: 15.h,
                            width: 38.w,
                            child: Lottie.asset("images/ssk.json"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      textfield(),
                      SizedBox(height: 4.h,),
                      Container(
                        height: 6.h,
                        width: 65.w,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.h),color: or),
                        child: Center(
                          child: alltext(
                              txt: "Post Now",
                              col: wh,
                              siz: 12.sp,
                              wei: FontWeight.bold,
                              max: 1),
                        ),
                      )
                    ],
                  ),
                )),
          ),
        );
      });
}

Widget textfield() {
  return SizedBox(
    width: 65.w,
    child: TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      decoration: const InputDecoration(
          hintText: "write your Thoughts are", border: OutlineInputBorder()),
    ),
  );
}

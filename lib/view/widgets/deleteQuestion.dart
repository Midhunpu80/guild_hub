import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_socio/main.dart';
import 'package:job_socio/view/utility/alltext.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:sizer/sizer.dart';

deleteandreport_question(BuildContext context, var index) {
  return showBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 30.h,
          width: 100.w,
          color: re.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 3.h,
                ),
                InkWell(
                  onTap: () {
                    print(question_controll.allquestionList[index]["postid"]
                        .toString());
                    question_controll.deltedthequestions(
                        postid: question_controll.allquestionList[index]
                                ["id"]
                            .toString());
                    Get.back();
                    print("one");
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        alltext(
                            txt: "delete",
                            col: bl,
                            siz: 12.sp,
                            wei: FontWeight.bold,
                            max: 1),
                        CircleAvatar(
                          radius: 2.h,
                          child: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                InkWell(
                  onTap: () {
                    print("two");
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        alltext(
                            txt: "Report",
                            col: bl,
                            siz: 12.sp,
                            wei: FontWeight.bold,
                            max: 1),
                        CircleAvatar(
                          radius: 2.h,
                          child: Icon(Icons.report),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      });
}

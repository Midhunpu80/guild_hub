import 'package:flutter/material.dart';
import 'package:job_socio/main.dart';
import 'package:job_socio/view/utility/alltext.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:job_socio/view/widgets/comments.dart';

import 'package:sizer/sizer.dart';

// Widget userpostimage(BuildContext context, var index) {

// }

like_and_commentbar(
    {required BuildContext context,
    var ind,
    required var likes,
    required var commentsa}) {
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
                      onPressed: () {
                        question_controll.likequestions(
                            postid: question_controll.allquestionList[ind]
                                    ["postid"]
                                .toString(),
                            userid: question_controll.allquestionList[ind]["id"]
                                .toString());
                      },
                      icon: Icon(
                        Icons.favorite_outline,
                        size: 2.h,
                        color: bl,
                      ))),
              SizedBox(
                width: 2.w,
              ),
              alltext(
                  txt: likes.toString(),
                  col: bl,
                  siz: 9.sp,
                  wei: FontWeight.bold,
                  max: 1)
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
                        commentsmessenger(context);
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
                  txt: commentsa.toString(),
                  col: bl,
                  siz: 9.sp,
                  wei: FontWeight.bold,
                  max: 1)
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

Widget descriptionbar({required var des}) {
  return Container(
    height: 10.h,
    width: 100.w,
    //  decoration: BoxDecoration(),
    child: alltext(
        txt: des.toString(), col: bl, siz: 8.sp, wei: FontWeight.w400, max: 8),
  );
}

import 'package:flutter/material.dart';
import 'package:job_socio/view/utility/alltext.dart';
import 'package:job_socio/view/utility/buttons.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:job_socio/view/widgets/askquestion.dart';
import 'package:job_socio/view/widgets/communitypost.dart';
import 'package:sizer/sizer.dart';

class communityscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 5.h),
        child: FloatingActionButton(
          onPressed: () {
            askquestionsheet(context);
          },
          child: alltext(
              txt: "Ask Q?", col: bl, siz: 12.sp, wei: FontWeight.bold, max: 1),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 4.h,
              width: 20.w,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 7.h,
                  width: 100.w,

                  /// color: Color.fromARGB(255, 101, 76, 175),
                  child: Row(
                    children: [
                      alltext(
                          txt: "Community",
                          col: bl,
                          siz: 18.sp,
                          wei: FontWeight.w600,
                          max: 1),
                      Spacer(),
                      messegebutton(),
                      notificationbutton(),
                    ],
                  )),
            ),
            communitypost(),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}

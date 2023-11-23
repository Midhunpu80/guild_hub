import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_socio/main.dart';
import 'package:job_socio/view/utility/alltext.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:job_socio/view/widgets/askquestion.dart';
import 'package:job_socio/view/widgets/communitypost.dart';
import 'package:job_socio/view/widgets/header.dart';
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
      body: Obx(
        () => question_controll.allquestionList.value.isEmpty
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 4.h,
                      width: 20.w,
                    ),
                    header(tit: "Community"),
                    communitypost(),
                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

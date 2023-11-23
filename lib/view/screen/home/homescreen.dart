import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_socio/main.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:job_socio/view/widgets/drawer.dart';
import 'package:job_socio/view/widgets/requirebar.dart';
import 'package:sizer/sizer.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: wh.withOpacity(0.3),
        body:  SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 4.h,
                      ),
                      drawwer(),
                      requirebar(),
                      Divider(),
                      userpostdatasList(context),
                    ],
                  ),
                ),
        );
  }
}

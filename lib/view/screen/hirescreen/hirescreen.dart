import 'package:flutter/material.dart';
import 'package:job_socio/view/utility/alltext.dart';
import 'package:job_socio/view/utility/buttons.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:sizer/sizer.dart';

class hirescreen extends StatelessWidget {
  const hirescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [messegebutton(), notificationbutton()],
        title: alltext(
            txt: "Hire", col: bl, siz: 13.sp, wei: FontWeight.bold, max: 1),
        backgroundColor: wh,
      ),
      body: Column(
        children: [
          Divider(),
          Container(
            height: 86.h,
            width: 100.w,
            decoration: BoxDecoration(
                color: wh,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3.h),
                    topRight: Radius.circular(3.h))),
            child: GridView.builder(
                itemCount: 8,
                // ignore: prefer_const_constructors
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.8, crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 10.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.h),
                          color: or,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            CircleAvatar(
                              radius: 4.h,
                              backgroundColor: bl.withOpacity(0.3),
                            ),
                            alltext(
                                txt: "tech data",
                                col: bl,
                                siz: 10.sp,
                                wei: FontWeight.bold,
                                max: 1),
                            alltext(
                                txt: "Carpentor",
                                col: bl,
                                siz: 12.sp,
                                wei: FontWeight.w400,
                                max: 1),
                            alltext(
                                txt: "9061603159",
                                col: bl,
                                siz: 8.sp,
                                wei: FontWeight.bold,
                                max: 1),
                            SizedBox(
                              height: 3.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 4.h,
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1.h),
                                      color: gr),
                                  child: Center(
                                    child: alltext(
                                        txt: "Hire",
                                        col: bl,
                                        siz: 9.sp,
                                        wei: FontWeight.bold,
                                        max: 1),
                                  ),
                                ),
                                Container(
                                  height: 4.h,
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1.h),
                                      color: re),
                                  child: Center(
                                    child: alltext(
                                        txt: "Messege",
                                        col: bl,
                                        siz: 8.sp,
                                        wei: FontWeight.bold,
                                        max: 1),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

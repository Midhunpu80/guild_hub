import 'package:flutter/material.dart';
import 'package:job_socio/view/utility/alltext.dart';
import 'package:job_socio/view/utility/buttons.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:job_socio/view/widgets/reuirementshiredetails.dart';
import 'package:sizer/sizer.dart';

class reuirementscreen extends StatelessWidget {
  const reuirementscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        title: alltext(
            txt: "Reuirements in india",
            col: bl,
            siz: 11.sp,
            wei: FontWeight.w500,
            max: 1),
        actions: [
          notificationbutton(),
          messegebutton(),
        ],
        backgroundColor: wh,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            SizedBox(
              height: 84.h,
              width: 100.w,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        reuirement_hire_details(context);
                      },
                      child: SizedBox(
                        height: 17.h,
                        width: 100.w,
                        //decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.h),color:wh),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 1.h,
                            ),
                            ListTile(
                              subtitle: alltext(
                                  txt: "Kozhikode ,kerala ,india,",
                                  col: bl,
                                  siz: 8.sp,
                                  wei: FontWeight.w400,
                                  max: 2),
                              title: alltext(
                                  txt:
                                      "Need A Experianced civil engineer Home Designer Near Vembayam trivandram",
                                  col: bl,
                                  siz: 10.sp,
                                  wei: FontWeight.bold,
                                  max: 2),
                              leading: Container(
                                height: 11.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.h),
                                    color: pp.withOpacity(0.3)),
                              ),
                            ),
                            TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.send_time_extension,
                                  color: bl,
                                ),
                                label: alltext(
                                    txt: "Messege the job poster Directly",
                                    col: bl,
                                    siz: 8.sp,
                                    wei: FontWeight.w400,
                                    max: 2))
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: 18),
            )
          ],
        ),
      ),
    );
  }
}

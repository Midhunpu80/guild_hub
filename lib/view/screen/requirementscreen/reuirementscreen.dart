import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_socio/main.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: alltext(
            txt: "Post", col: wh, siz: 10.sp, wei: FontWeight.bold, max: 1),
        backgroundColor: pp,
      ),
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
      body: Obx(
        () => require_controll.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                  children: [
                    const Divider(),
                    SizedBox(
                      height: 84.h,
                      width: 100.w,
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            var snap = require_controll.reply.response[index];
                            return InkWell(
                              onTap: () {
                                reuirement_hire_details(
                                  context,
                                  budget: snap.budget.toString(),
                                  location: snap.location.toString(),
                                  person: snap.hired.toString(),
                                  intrested: snap.interesteds.length.toString(),
                                  messege: snap.requirement.toString(),
                                );
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
                                          txt:
                                              "${snap.location.toString()},kerala ,india,",
                                          col: bl,
                                          siz: 8.sp,
                                          wei: FontWeight.w400,
                                          max: 2),
                                      title: alltext(
                                          txt: require_controll.reply
                                              .response[index].requirement,
                                          col: bl,
                                          siz: 10.sp,
                                          wei: FontWeight.bold,
                                          max: 2),
                                      leading: Container(
                                        height: 11.h,
                                        width: 20.w,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    snap.image.toString())),
                                            borderRadius:
                                                BorderRadius.circular(1.h),
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
                                            txt:
                                                "Messege the job poster Directly",
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
                          itemCount: require_controll.reply.response.length),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}

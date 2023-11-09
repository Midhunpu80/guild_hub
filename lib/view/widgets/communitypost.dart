import 'package:flutter/material.dart';

import 'package:job_socio/view/utility/colors.dart';
import 'package:job_socio/view/widgets/userpost.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:sizer/sizer.dart';

communitypost() {
  return Container(
    height: 87.h,
    width: 100.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4.h), topRight: Radius.circular(4.h)),
        color: pp.withOpacity(0.3)),
    child: ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: ListTile(
                        trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert_outlined,
                              color: bl,
                            )),
                        leading: CircleAvatar(
                          radius: 4.h,
                        ),
                        title: RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              const TextSpan(
                                  text: 'Midhun pu ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: 'Thrissur',
                                  style: TextStyle(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w500,
                                      color: gr)),
                            ],
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    // ignore: avoid_unnecessary_containers
                    child: Container(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Center(
                              child: ExpandableText(
                                "the dentist not cry why its not the last i am beleive my aself take car " *
                                    120,
                                expandText: 'show more',
                                collapseText: 'show less',
                                maxLines: 8,
                                style: TextStyle(
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w400),
                                linkColor: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(2.h),
                          bottomRight: Radius.circular(2.h)),
                      child: like_and_commentbar(context)),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox();
        },
        itemCount: 15),
  );
}

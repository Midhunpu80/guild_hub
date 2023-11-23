import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:job_socio/main.dart';

import 'package:job_socio/view/utility/alltext.dart';
import 'package:job_socio/view/utility/buttons.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:job_socio/view/widgets/userpost.dart';
import 'package:sizer/sizer.dart';

Widget drawwer() {
  return Container(
    height: 8.h,
    width: 100.w,
    color: wh.withOpacity(0.8),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          alltext(
              txt: "Guild Hub",
              col: bl,
              siz: 17.sp,
              wei: FontWeight.bold,
              max: 1),
          // CircleAvatar(
          //   backgroundColor: bl,
          //   radius: 3.h,
          // ),
          const Spacer(),
          messegebutton(),
          notificationbutton(),
        ],
      ),
    ),
  );
}

Widget userpostdatasList(BuildContext context) {
  return Obx(
    () => getposts_controll.isLoading.value
        ? const Center(child: CircularProgressIndicator())
        : SizedBox(
            height: 80.h,
            width: 100.w,
            //   color: gy.withOpacity(0.3),
            child: ListView.separated(
              itemCount: getposts_controll.reply.post.length,
              itemBuilder: (context, index) {
                 final snap = getposts_controll.reply.post[index];
                //  final snap2 = getposts_controll.reply.users[index];
                // final snap3 = getposts_controll.reply.message[index];

                return Card(
                  child: Container(
                    height: 61.h,
                    decoration: BoxDecoration(color: wh, boxShadow: [
                      BoxShadow(
                          offset: Offset.zero,
                          blurRadius: 5.5,
                          spreadRadius: 5,
                          color: gy.withOpacity(0.3))
                    ]),
                    child: Column(
                      children: [
                        posthead(
                            index: index,
                            type: getposts_controll.reply.pros[index].category
                                .toString(),
                            name: getposts_controll.reply.pros[index].name
                                .toString()),
                        SizedBox(
                          height: 35.h,
                          width: 100.w,
                          child: Image.network(
                              "${snap.image[0].toString()}"),
                          // decoration: BoxDecoration(

                          //     image: DecorationImage(
                          //         image: NetworkImage(getposts_controll.reply.post[index].image.toString()))),
                        ),
                        like_and_commentbar(
                          context: context,
                          ind: index,
                          likes: getposts_controll
                              .reply.post[index].likes.length
                              .toString(),
                          commentsa: getposts_controll
                              .reply.comments[index].content.length
                              .toString(),
                        ),
                        descriptionbar(
                            des: getposts_controll.reply.post[index].message
                                .toString()),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox();
              },
            )),
  );
}

Widget posthead({required var index, required var name, required var type}) {
  return Container(
      height: 8.h,
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(1.h), topRight: Radius.circular(1.h)),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: bl,
        ),
        title: alltext(
            txt: name.toString(),
            col: bl,
            siz: 12.sp,
            wei: FontWeight.w600,
            max: 1),
        subtitle: alltext(
            txt: type.toString(),
            col: bl,
            siz: 8.sp,
            wei: FontWeight.w400,
            max: 1),
        trailing: Icon(
          Icons.more_vert_outlined,
          color: bl,
        ),
      ));
}

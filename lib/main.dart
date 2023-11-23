// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_socio/controller/bottomcontroller.dart';
import 'package:job_socio/controller/protabcontroller.dart';
import 'package:job_socio/view/screen/bottomnavigation/bottomnavigation.dart';
import 'package:job_socio/view/service/allposts.dart';
import 'package:job_socio/view/service/allquestionsservice.dart';
import 'package:job_socio/view/service/authentication/login.dart';
import 'package:job_socio/view/service/authentication/regowner.dart';
import 'package:job_socio/view/service/authentication/reuirementservice.dart';
import 'package:job_socio/view/utility/colors.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

final bottomct = Get.put(bottomcontroller());
final procontroll = Get.put(protabcontroller());
final log_controll = Get.put(login_service());

final regowner_controll = Get.put(regowner_service());
final getposts_controll = Get.put(allposts_service());
final question_controll = Get.put(allquestion_service());
final require_controll = Get.put(allreuirement_service());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: blu),
            useMaterial3: true,
          ),
          home: Scaffold(body: bottomnavscreen()));
    });
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_socio/controller/bottomcontroller.dart';
import 'package:job_socio/view/screen/bottomnavigation/bottomnavigation.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

final bottomct = Get.put(bottomcontroller());

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
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: Scaffold(
            body: bottomnavscreen(),
          ));
    });
  }
}

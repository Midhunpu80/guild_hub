// ignore_for_file: camel_case_types

import 'dart:convert';

import 'package:get/get.dart';
import "package:http/http.dart" as http;
import 'package:job_socio/Model/ownermodels/allpostsmodels.dart';

import 'package:job_socio/view/constant/apiconfigraion.dart';
import 'package:job_socio/view/constant/token.dart';

class allposts_service extends GetxController {
  var isLoading = false.obs;
  Apiconfighomeowner s = Apiconfighomeowner();
  late AllpostsModel reply;

  getposts_services() async {
    try {
      isLoading(true);
      final response = await http.get(
        Uri.parse(s.postpic_url),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
          'Connection': 'keep-alive'
        },
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        ///  print(data.toString());
        reply = AllpostsModel.fromJson(data);

        print(
            "-<<<<<-------------2333-----------------${reply.post.map((e) => e.likes.length.toString()).toList().toString()}----------222--------------------->>>>");

        isLoading(false);

        update();
      } else {
        isLoading(false);
        print("is failed to fetching${response.body.toString()}");
        update();
      }

      // ignore: empty_catches
    } catch (e) {
      isLoading(false);

      throw Exception("is failed to fetch teh data$e ");
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() async {
    await getposts_services();
    super.onInit();
  }
}

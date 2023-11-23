// ignore_for_file: camel_case_types

import 'dart:convert';

import 'package:get/get.dart';
import "package:http/http.dart" as http;
import 'package:job_socio/Model/ownermodels/allpostsmodels.dart';
import 'package:job_socio/Model/ownermodels/reuirementmodel.dart';

import 'package:job_socio/view/constant/apiconfigraion.dart';
import 'package:job_socio/view/constant/token.dart';

class allreuirement_service extends GetxController {
  var isLoading = false.obs;
  Apiconfighomeowner s = Apiconfighomeowner();
  late ReuirementModel reply;

  getreuirements_services() async {
    try {
      isLoading(true);
      final response = await http.get(
        Uri.parse(s.reuirement_url),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
          'Connection': 'keep-alive'
        },
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        ///  print(data.toString());
        reply = ReuirementModel.fromJson(data);

        print(
            "-<<<<<-------------2333-----------------${reply.users.map((e) => e.email.toString()).toList()}----------222--------------------->>>>");

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
    await getreuirements_services();
    super.onInit();
  }
}

import 'dart:convert';

import 'package:get/get.dart';
import "package:http/http.dart" as http;
import 'package:job_socio/main.dart';
import 'package:job_socio/view/constant/apiconfigraion.dart';
import 'package:job_socio/view/screen/bottomnavigation/bottomnavigation.dart';

class login_service extends GetxController {
  var isLoading = false.obs;
  Apiconfighomeowner s = Apiconfighomeowner();
  Apiconfig_proffesional j = Apiconfig_proffesional();

  login_services({required var email, required var password}) async {
    final bdy = {
      "email": email.toString(),
      "password": password.toString(),
    };
    try {
      isLoading(true);
      final response = await http.post(
          Uri.parse(
              procontroll.gropdata.value == 2 ? j.login_url : s.login_url),
          headers: {
            'Content-Type': 'application/json',
            'Accept': '*/*',
            'Accept-Encoding': 'gzip, deflate, br',
            'Connection': 'keep-alive'
          },
          body: jsonEncode(bdy));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        Get.to(() => bottomnavscreen());

        print(data.toString());
        isLoading(false);
        update();
      } else {
        isLoading(false);
        print("is failed to login");
      }

      // ignore: empty_catches
    } catch (e) {
      throw ("is failed to login");
    }
  }

  logic() {
    if (procontroll.gropdata.value == 1) {
      s.login_url;
    } else if (procontroll.gropdata.value == 2) {
      j.login_url;
    }
  }
}

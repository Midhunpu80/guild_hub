import 'dart:convert';

import 'package:get/get.dart';
import "package:http/http.dart" as http;
import 'package:job_socio/main.dart';
import 'package:job_socio/view/constant/apiconfigraion.dart';
import 'package:job_socio/view/screen/authentication/Loginscreen/loginscreen.dart';
import 'package:job_socio/view/screen/bottomnavigation/bottomnavigation.dart';

class regowner_service extends GetxController {
  var isLoading = false.obs;
  Apiconfighomeowner s = Apiconfighomeowner();
  Apiconfig_proffesional j = Apiconfig_proffesional();

  registerowner_services(
      {required var name,
      required var phone,
      required var email,
      required var password,
      required var location}) async {
    final bdy = {
      "name": name.toString(),
      "email": email.toString(),
      "phone": phone.toString(),
      "password": password.toString(),
      "location": location.toString()
    };
    try {
      isLoading(true);
      final response = await http.post(Uri.parse(s.register_url),
          headers: {
            'Content-Type': 'application/json',
            'Accept': '*/*',
            'Accept-Encoding': 'gzip, deflate, br',
            'Connection': 'keep-alive'
          },
          body: jsonEncode(bdy));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        Get.to(() => Loginscreen());

        print(data.toString());
        isLoading(false);
        update();
      } else {
        isLoading(false);
        print("is failed to register");
      }

      // ignore: empty_catches
    } catch (e) {
      throw ("is failed to login$e");
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

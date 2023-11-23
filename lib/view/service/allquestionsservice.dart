// ignore_for_file: camel_case_types

import 'dart:convert';

import 'package:get/get.dart';
import "package:http/http.dart" as http;
import 'package:job_socio/Model/ownermodels/allquestionmodel.dart';

import 'package:job_socio/view/constant/apiconfigraion.dart';
import 'package:job_socio/view/constant/token.dart';

class allquestion_service extends GetxController {
  var isLoading = false.obs;
  Apiconfighomeowner s = Apiconfighomeowner();
  late AllquestionsModel reply;
  var name = <dynamic>[].obs;
  var messege = <dynamic>[].obs;
  var image = <dynamic>[].obs;
  var cat = <dynamic>[].obs;
  var location = <dynamic>[].obs;
  var comments = <dynamic>[].obs;
  Set<String> uniqueIds = Set();
  Set<String> uniqudatas = Set();

  RxList<Map<String, dynamic>> allmess = RxList<Map<String, dynamic>>([]);

  RxList<Map<String, dynamic>> allquestionList =
      RxList<Map<String, dynamic>>([]);
  Map<String, dynamic> newData = {};
  Map<String, dynamic> content = {};

  deltedthequestions({required var postid}) async {
    final bdy = {"_id": postid.toString()};

    try {
      isLoading(true);
      final response = await http.post(Uri.parse(s.deltequstions_url),
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
            'Accept': '*/*',
            'Accept-Encoding': 'gzip, deflate, br',
            'Connection': 'keep-alive'
          },
          body: jsonEncode(bdy));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        getquesions();

        print(
            "-----------------deleted------------------------>${data.toString()}");
        isLoading(false);
        update();
      } else {
        isLoading(false);
        print("is failed to like");
      }

      // ignore: empty_catches
    } catch (e) {
      throw ("is failed to fetch$e");
    }
  }

  uploadquestions({required var messege}) async {
    final bdy = {
      'message': messege.toString(),
      'category': "HomeOwner",
      'userId': "64cf5bfd201493d4c05ab33b",
    };

    try {
      isLoading(true);
      final response = await http.post(Uri.parse(s.questionUpload_url),
          headers: {
            'Content-Type': 'application/json',
            'Accept': '*/*',
            'Accept-Encoding': 'gzip, deflate, br',
            'Connection': 'keep-alive'
          },
          body: jsonEncode(bdy));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        getquesions();
        getquesions();

        print(
            "-----------------sucesssedd------------------------->${data.toString()}");
        isLoading(false);
        update();
      } else {
        isLoading(false);
        print("is failed to fecth");
      }

      // ignore: empty_catches
    } catch (e) {
      throw ("is failed to fetch$e");
    }
  }

  likequestions({required var postid, required var userid}) async {
    final bdy = {
      'postId': {"_id": postid.toString()},
      'userId': '64cf5bfd201493d4c05ab33b',
    };

    try {
      isLoading(true);
      final response = await http.post(Uri.parse(s.likewuestions_url),
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
            'Accept': '*/*',
            'Accept-Encoding': 'gzip, deflate, br',
            'Connection': 'keep-alive'
          },
          body: jsonEncode(bdy));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        getquesions();

        print(
            "-----------------liked------------------------->${data.toString()}");
        isLoading(false);
        update();
      } else {
        isLoading(false);
        print("is failed to like");
      }

      // ignore: empty_catches
    } catch (e) {
      throw ("is failed to fetch$e");
    }
  }

  getquesions() async {
    try {
      isLoading(true);
      final response = await http.get(
        Uri.parse(s.getquestions_url),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
          'Connection': 'keep-alive'
        },
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        /// print(data.toString());
        reply = AllquestionsModel.fromJson(data);

        print(reply.post
            .map((e) => e.category.length.toString())
            .toList()
            .toString());

        reply.post.forEach((e) {
          reply.pros.forEach((p) {
            reply.comments.forEach((ele) {
              reply.users.forEach((es) {
                if (e.userId == es.id || p.id == ele.userId) {
                  cat.add(ele.content.toString());
                  name.add(es.name.toString());
                  image.add(p.name.toString());
                  content = {
                    "name": name.toSet().toString(),
                    "contents": cat.toSet().toString(),
                    "pros": image.toSet().toString()
                  };
                }

                if (e.userId == es.id) {
                  newData = {
                    "id": e.userId.toString(),
                    "name": es.name.toString(),
                    "image": e.image.toString(),
                    "cateogorey": e.category.toString(),
                    "loaction": es.location.toString(),
                    "messege": e.message.toString(),
                    "likes": e.likes.length.toString(),
                    "comments": ele.content,
                    "postid": e.id
                  };
                  update();

                  // print(
                  //     "-----------------------------------------------------------------------${messege.toList().toString()}------------------------messege------------------------------------------------->>>>>>>");
                }
              });
            });
          });
          if (uniqudatas.add(content["contents"])) {
            allmess.add(content);
            print(allmess.toSet().toString());
          }
          if (uniqueIds.add(newData["postid"])) {
            messege.add(content);
            allquestionList.add(newData);
            //print(messege.toSet().toString());
          }
        });

        // print("${content.toString()}----------------kkkkkkkkkkkkkk");

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
    await getquesions();
    super.onInit();
  }
}

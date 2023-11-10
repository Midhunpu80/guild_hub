import 'package:get/get.dart';

class protabcontroller extends GetxController {
  Rx<int> newindex = 0.obs;
  changethewidget({required var index}) {
    newindex.value = index;
    
  }
}

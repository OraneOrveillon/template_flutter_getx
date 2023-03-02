import 'package:get/get.dart';

import '../routes/route_names.dart';

class HomeController extends GetxController {
  var count = 0.obs;

  void increment() => count++;

  void decrement() => count.value == 0 ? count : count--;

  void onClick() => Get.toNamed(other);
}

import 'package:get/get.dart';

import '../routes/route_names.dart';

// TODO renommer
class Counter extends GetxController {
  var count = 0.obs;

  void increment() => count++;

  void onClick() => Get.toNamed(other);
}

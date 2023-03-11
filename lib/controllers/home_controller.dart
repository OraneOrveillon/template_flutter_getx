import 'package:get/get.dart';

import '../routes/route_names.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  void increment() => count.value++;

  void onClick() => Get.toNamed(dog);
}

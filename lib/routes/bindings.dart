import 'package:get/get.dart';

import '../controllers/dog_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}

class DogBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DogController());
  }
}

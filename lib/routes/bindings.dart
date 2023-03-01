import 'package:get/get.dart';

import '../controllers/counter.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Counter());
  }
}

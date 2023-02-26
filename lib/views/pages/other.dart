import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/counter.dart';

class Other extends StatelessWidget {
  Other({super.key});

  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Counter controller = Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(
      body: Center(
        child: Text("${controller.count}"),
      ),
    );
  }
}

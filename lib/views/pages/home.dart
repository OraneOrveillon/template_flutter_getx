import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/counter.dart';
import 'other.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(context) {
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final Counter controller = Get.put(Counter());

    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      appBar: AppBar(title: Obx(() => Text("Count: ${controller.count}"))),

      // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
      body: Center(
          child: ElevatedButton(
              child: const Text("Go to Other"),
              onPressed: () => Get.to(Other()))),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const GetMaterialApp(home: Home()));

class Counter extends GetxController {
  var count = 0.obs;

  increment() => count++;
}

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

class Other extends StatelessWidget {
  Other({super.key});

  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Counter c = Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(body: Center(child: Text("${c.count}")));
  }
}

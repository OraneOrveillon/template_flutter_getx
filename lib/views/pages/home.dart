import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/counter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(context) {
    // ? Getx<Controller> permet à la fois de récupérer le controller souhaité
    // ? et d'observer les changements de valeur pour mettre à jour l'interface
    return GetX<Counter>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(title: Text("Count: ${controller.count}")),
        body: Center(
          child: ElevatedButton(
            child: const Text("Go to Other"),
            onPressed: () => controller.onClick(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: controller.increment,
          child: const Icon(Icons.add),
        ),
      );
    });
  }
}

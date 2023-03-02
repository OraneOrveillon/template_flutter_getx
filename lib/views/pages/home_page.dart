import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(context) {
    // ? Getx<Controller> permet à la fois de récupérer le controller souhaité
    // ? et d'observer les changements de valeur pour mettre à jour l'interface
    return GetX<HomeController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(title: Text("Count: ${controller.count}")),
          body: Center(
            child: ElevatedButton(
              child: const Text("Go to Other"),
              onPressed: () => controller.onClick(),
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () => controller.increment(),
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 10),
              FloatingActionButton(
                onPressed: () => controller.decrement(),
                child: const Icon(Icons.remove),
              )
            ],
          ),
        );
      },
    );
  }
}

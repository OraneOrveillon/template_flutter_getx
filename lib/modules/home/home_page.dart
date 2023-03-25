import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';
import '../../utils/texts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(context) {
    // ? Getx<Controller> permet à la fois de récupérer le controller souhaité
    // ? et d'observer les changements de valeur pour mettre à jour l'interface
    return GetX<HomeController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(AppBarTexts.home(controller.count.value)),
          ),
          body: Center(
            child: ElevatedButton(
              child: const Text(ButtonTexts.toDog),
              onPressed: () => controller.onClick(),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => controller.increment(),
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}

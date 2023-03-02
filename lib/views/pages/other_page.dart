import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(context) {
    // ? GetBuilder permet de récupérer le controller souhaité mais sans rendre
    // ? l'interface réactive aux changements
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text("${controller.count}"),
          ),
        );
      },
    );
  }
}

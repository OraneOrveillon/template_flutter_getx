import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/counter.dart';

class Other extends StatelessWidget {
  const Other({super.key});

  @override
  Widget build(context) {
    // Access the updated count variable
    // ? GetBuilder permet de récupérer le controller souhaité mais sans rendre
    // ? l'interface réactive aux changements
    return GetBuilder<Counter>(
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

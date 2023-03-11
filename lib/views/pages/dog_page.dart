import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/dog_controller.dart';
import '../../controllers/home_controller.dart';
import '../../utils/sizing.dart';
import '../../utils/texts.dart';

class DogPage extends StatelessWidget {
  const DogPage({super.key});

  @override
  Widget build(context) {
    // ? GetBuilder permet de récupérer le controller souhaité mais sans rendre
    // ? l'interface réactive aux changements
    return GetBuilder<HomeController>(
      builder: (homeController) {
        return Scaffold(
          appBar: AppBar(
            title: Text(AppBarTexts.home(homeController.count.value)),
          ),
          body: Center(
            child: GetX<DogController>(
              builder: (dogController) {
                if (dogController.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                }
                return Padding(
                  padding: const EdgeInsets.all(Paddings.medium),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AspectRatio(
                        aspectRatio: 4 / 5,
                        child: Image.network(dogController.dog.message),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          dogController.getApi();
                        },
                        child: const Text(ButtonTexts.newDog),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

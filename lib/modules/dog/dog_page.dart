import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dog_controller.dart';
import '../home/home_controller.dart';
import '../../utils/paddings.dart';
import '../../utils/texts.dart';

class DogPage extends StatelessWidget {
  const DogPage({super.key});

  @override
  Widget build(context) {
    // ? GetBuilder => access the controller without adding reactivity.
    return GetBuilder<HomeController>(
      builder: (cHome) {
        return Scaffold(
          appBar: AppBar(
            title: Text(AppBarTexts.home(cHome.count.value)),
          ),
          body: Center(
            child: GetX<DogController>(
              builder: (cDog) {
                if (cDog.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                }
                return Padding(
                  padding: const EdgeInsets.all(Paddings.medium),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AspectRatio(
                        aspectRatio: 4 / 5,
                        child: Image.network(cDog.dog.message),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          cDog.getApi();
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

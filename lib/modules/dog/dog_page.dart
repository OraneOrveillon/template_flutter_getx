import 'package:flutter/material.dart';
import 'package:flutter_template/core/theme/colors.dart';
import 'package:flutter_template/core/utils/errors.dart';
import 'package:get/get.dart';

import 'dog_controller.dart';
import '../home/home_controller.dart';
import '../../core/utils/paddings.dart';
import '../../core/utils/texts.dart';

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
                  return const CircularProgressIndicator();
                } else {
                  return cDog.dog.fold(
                    (exception) {
                      return ListTile(
                        title: const Text(FetchErrors.fetchDog),
                        subtitle: Text(exception.toString()),
                        textColor: errorColor,
                      );
                    },
                    (dog) {
                      return Padding(
                        padding: const EdgeInsets.all(Paddings.medium),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AspectRatio(
                              aspectRatio: 4 / 5,
                              child: Image.network(dog.message),
                            ),
                            ElevatedButton(
                              onPressed: () async => cDog.getApi(),
                              child: const Text(ButtonTexts.newDog),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        );
      },
    );
  }
}

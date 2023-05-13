import 'package:get/get.dart';

import '../../data/models/dog_model.dart';
import '../../data/services/dog_repository.dart';

class DogController extends GetxController {
  late Dog dog;
  final isLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    getApi();
  }

  void getApi() async {
    isLoading.value = true;
    dog = await DogRepository.fetchDog();

    isLoading.value = false;
  }
}

import 'package:get/get.dart';

import 'dog_model.dart';
import 'dog_repository.dart';

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
    dog = await DogRepository.fetchCustomers();

    isLoading.value = false;
  }
}

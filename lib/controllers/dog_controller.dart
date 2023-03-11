import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/dog_model.dart';
import '../models/repositories/dog_repository.dart';

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
    dog = await DogRepository.fetchCustomers(http.Client());

    isLoading.value = false;
  }
}

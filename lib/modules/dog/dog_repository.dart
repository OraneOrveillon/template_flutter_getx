import 'package:get/get.dart';

import 'dog_model.dart';

abstract class DogRepository {
  static const String uri = "https://dog.ceo/api/breeds/image/random";

  static Future<Dog> fetchCustomers() async {
    final response = await GetHttpClient().get(uri);

    if (response.statusCode == 200) {
      return Dog.fromJson(response.body);
    } else {
      throw Exception('Failed to load dog');
    }
  }
}

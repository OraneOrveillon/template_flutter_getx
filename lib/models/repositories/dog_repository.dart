import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dog_model.dart';

abstract class DogRepository {
  static const String uri = "https://dog.ceo/api/breeds/image/random";

  static Future<Dog> fetchCustomers(http.Client client) async {
    final response = await client.get(Uri.parse(uri));

    if (response.statusCode == 200) {
      return Dog.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load dog');
    }
  }
}

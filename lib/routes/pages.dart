import 'package:get/get.dart';

import '../modules/dog/dog_binding.dart';
import '../modules/dog/dog_page.dart';
import 'routes.dart';

// ? Routes existantes, peuvent avoir des routes enfants
// ? Pas besoin de spécifier la root
List<GetPage> pages = [
  GetPage(
    name: dog,
    page: () => const DogPage(),
    binding: DogBinding(),
  ),
];

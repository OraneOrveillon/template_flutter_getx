import 'package:get/get.dart';
import 'package:template_getx/routes/bindings.dart';

import '../views/pages/dog_page.dart';
import 'route_names.dart';

// ? Routes existantes, peuvent avoir des routes enfants
// ? Pas besoin de spécifier la root
List<GetPage> pages = [
  GetPage(
    name: dog,
    page: () => const DogPage(),
    binding: DogBinding(),
  ),
];

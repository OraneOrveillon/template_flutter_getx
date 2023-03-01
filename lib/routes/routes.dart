import 'package:get/get.dart';

import '../views/pages/other.dart';
import 'route_names.dart';

// ? Routes existantes, peuvent avoir des routes enfants
// ? Pas besoin de spécifier la root
List<GetPage> pages = [
  GetPage(
    name: other,
    page: () => const Other(),
  ),
];

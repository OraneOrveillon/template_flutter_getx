import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/bindings.dart';
import 'routes/routes.dart';
import 'views/pages/home_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: const HomePage(),
      // ? Dépendance de la page d'accueil s'il y en a une
      initialBinding: HomeBinding(),
      getPages: pages,
    ),
  );
}

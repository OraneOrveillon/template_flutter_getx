import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/bindings.dart';
import 'routes/routes.dart';
import 'views/pages/home.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: const Home(),
      // ? Dépendance de la page d'accueil s'il y en a une
      initialBinding: HomeBinding(),
      getPages: pages,
    ),
  );
}

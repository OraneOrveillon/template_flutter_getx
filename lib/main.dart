import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/home/home_binding.dart';
import 'routes/pages.dart';
import 'modules/home/home_page.dart';
import 'utils/theme/themes.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: const HomePage(),
      // ? Dépendance de la page d'accueil s'il y en a une
      initialBinding: HomeBinding(),
      getPages: pages,
      theme: lightTheme,
      darkTheme: darkTheme,
    ),
  );
}

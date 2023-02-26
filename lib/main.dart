import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/counter.dart';
import 'views/pages/home.dart';

void main() {
  runApp(
    const GetMaterialApp(
      home: Home(),
    ),
  );
}

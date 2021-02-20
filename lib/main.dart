import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

var theme = ThemeData(

);


void main() {
  runApp(
    GetMaterialApp(
      // darkTheme: ThemeData.dark(),
      theme: ThemeData.dark(),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

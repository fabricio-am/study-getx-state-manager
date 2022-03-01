import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/app/modules/home/binding.dart';
import 'package:test/app/modules/home/page.dart';
import 'package:test/routes/pages.dart';

void main() {
  runApp(GetMaterialApp(
    home: HomePage(),
    initialRoute: Routes.HOME,
    getPages: AppPages.pages,
    initialBinding: HomeBinding(),
    debugShowCheckedModeBanner: false,
  ));
}

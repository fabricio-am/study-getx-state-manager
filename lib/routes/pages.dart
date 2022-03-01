import 'package:get/get.dart';
import 'package:test/app/modules/home/binding.dart';

import '../app/modules/home/page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding())
  ];
}

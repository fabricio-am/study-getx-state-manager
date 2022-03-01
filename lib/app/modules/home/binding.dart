import 'package:get/get.dart';
import 'package:test/app/data/provider/api.dart';
import 'package:test/app/modules/home/controller.dart';
import 'package:test/app/modules/home/repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(HomeRepository(MyApi())));
  }
}

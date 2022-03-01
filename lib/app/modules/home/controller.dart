import 'package:get/get.dart';
import 'package:test/app/data/model/post.dart';
import 'package:test/app/modules/home/repository.dart';

class HomeController extends GetxController with StateMixin {
  final HomeRepository repository;
  HomeController(this.repository);

  @override
  void onInit() {
    getPosts();
    super.onInit();
  }

  getPosts() async {
    List<Posts> response = await repository.getNames();
    if (response.runtimeType != List<Posts>) {
      change(null, status: RxStatus.error('error'));
    } else {
      change(response, status: RxStatus.success());
    }
  }
}

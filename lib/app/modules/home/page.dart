import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/app/modules/home/controller.dart';
import 'package:test/app/widgets/card_post.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: controller.obx(
                (state) => ListView.builder(
                    itemCount: state!.length,
                    itemBuilder: (context, index) => CardPostwidget(
                          color: Colors.red,
                          text: state[index].title!,
                        )),
                onLoading: const Center(
                  child: CircularProgressIndicator(),
                ),
                onError: (s) => Center(child: Text(s!)))));
  }
}

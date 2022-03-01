import 'dart:convert';

import 'package:get/get_connect/connect.dart';
import 'package:test/app/data/model/post.dart';

const baseUrl = 'https://my-json-server.typicode.com/typicode/demo/post';

class MyApi extends GetConnect {
  getNames() async {
    final response = await get(baseUrl, decoder: (res) => res);
    if (response.hasError) {
      return null;
    } else {
      return postsFromJson(response.body);
    }
  }
}
